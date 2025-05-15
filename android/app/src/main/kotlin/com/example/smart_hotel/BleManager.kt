package com.example.smart_hotel

import android.bluetooth.*
import android.content.Context
import android.util.Log
import java.util.*

class BleManager(private val context: Context) {

    companion object {
        private val TAG = "BleManager"

        val SERVICE_UUID: UUID = UUID.fromString("7418c6e3-bebc-4179-b0bd-eaa8da241fcf")
        val DOOR_CHARACTERISTIC_UUID: UUID = UUID.fromString("a27f7a39-5c64-4226-8b5b-3ec8043ac638")
        val LIGHT_CHARACTERISTIC_UUID: UUID = UUID.fromString("8a1e288e-68b0-4310-b581-04c96f59477b")
    }

    private var bluetoothGatt: BluetoothGatt? = null
    private var isConnected = false

    fun connect(deviceId: String, onResult: (Boolean) -> Unit) {
        val bluetoothAdapter = BluetoothAdapter.getDefaultAdapter()
        val device = bluetoothAdapter.getRemoteDevice(deviceId)

        bluetoothGatt = device.connectGatt(context, false, object : BluetoothGattCallback() {

            override fun onConnectionStateChange(gatt: BluetoothGatt, status: Int, newState: Int) {
                if (newState == BluetoothProfile.STATE_CONNECTED) {
                    Log.d(TAG, "Connected to GATT server. Starting service discovery.")
                    gatt.discoverServices()
                } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                    Log.d(TAG, "Disconnected from GATT server.")
                    isConnected = false
                    onResult(false)
                }
            }

            override fun onServicesDiscovered(gatt: BluetoothGatt, status: Int) {
                if (status == BluetoothGatt.GATT_SUCCESS) {
                    val service = gatt.getService(SERVICE_UUID)
                    if (service != null &&
                        service.getCharacteristic(DOOR_CHARACTERISTIC_UUID) != null &&
                        service.getCharacteristic(LIGHT_CHARACTERISTIC_UUID) != null) {
                        Log.d(TAG, "Required service and characteristics found.")
                        isConnected = true
                        onResult(true)
                    } else {
                        Log.e(TAG, "Required service or characteristics not found!")
                        onResult(false)
                    }
                } else {
                    Log.e(TAG, "Service discovery failed with status: $status")
                    onResult(false)
                }
            }
        })
    }

    private fun writeToCharacteristic(uuid: UUID, data: ByteArray) {
        if (!isConnected || bluetoothGatt == null) {
            Log.e(TAG, "Not connected to a device.")
            return
        }
        val service = bluetoothGatt!!.getService(SERVICE_UUID)
        val characteristic = service?.getCharacteristic(uuid)
        if (characteristic == null) {
            Log.e(TAG, "Characteristic with UUID $uuid not found!")
            return
        }
        characteristic.value = data
        val success = bluetoothGatt!!.writeCharacteristic(characteristic)
        Log.d(TAG, "Write to characteristic ${uuid} successful? $success")
    }

    fun openDoor() {
        writeToCharacteristic(DOOR_CHARACTERISTIC_UUID, byteArrayOf(0x01))
    }

    fun closeDoor() {
        writeToCharacteristic(DOOR_CHARACTERISTIC_UUID, byteArrayOf(0x00))
    }

    fun setLight(daylight: Boolean, nightlight: Boolean) {
        val valueDaylight: Byte = if (daylight) 0x01 else 0x00
        val valueNightlight: Byte = if (nightlight) 0x01 else 0x00
        writeToCharacteristic(LIGHT_CHARACTERISTIC_UUID, byteArrayOf(valueDaylight, valueNightlight))
    }

    fun disconnect() {
        bluetoothGatt?.close()
        bluetoothGatt = null
        isConnected = false
    }
}
