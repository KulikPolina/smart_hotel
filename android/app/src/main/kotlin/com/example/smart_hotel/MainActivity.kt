package com.example.smart_hotel

import android.Manifest
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterFragmentActivity() {

    private val PERMISSION_REQUEST_CODE = 1001

    private val requiredPermissions = mutableListOf(
        Manifest.permission.ACCESS_FINE_LOCATION
    ).apply {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            add(Manifest.permission.BLUETOOTH_SCAN)
            add(Manifest.permission.BLUETOOTH_CONNECT)
        }
    }.toTypedArray()

    private lateinit var bleManager: BleManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        checkAndRequestPermissions()
        bleManager = BleManager(this)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "smart_hotel/ble")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "connect" -> {
                        val deviceId = call.argument<String>("deviceId")
                        if (deviceId != null) {
                            bleManager.connect(deviceId) { success ->
                                runOnUiThread {
                                    result.success(success)
                                }
                            }
                        } else {
                            result.error("INVALID_ARGUMENT", "deviceId is null", null)
                        }
                    }
                    "openDoor" -> {
                        bleManager.openDoor()
                        result.success(null)
                    }
                    "closeDoor" -> {
                        bleManager.closeDoor()
                        result.success(null)
                    }
                    "setLight" -> {
                        val daylight = call.argument<Boolean>("daylight") ?: false
                        val nightlight = call.argument<Boolean>("nightlight") ?: false
                        bleManager.setLight(daylight, nightlight)
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }

    private fun checkAndRequestPermissions() {
        val permissionsToRequest = requiredPermissions.filter {
            ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED
        }
        if (permissionsToRequest.isNotEmpty()) {
            ActivityCompat.requestPermissions(this, permissionsToRequest.toTypedArray(), PERMISSION_REQUEST_CODE)
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == PERMISSION_REQUEST_CODE) {
            val denied = grantResults.indices.filter { grantResults[it] != PackageManager.PERMISSION_GRANTED }
            if (denied.isNotEmpty()) {
                // Можно сообщить пользователю, что BLE функции будут недоступны
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        bleManager.disconnect()
    }
}
