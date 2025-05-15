import 'package:flutter_blue_plus/flutter_blue_plus.dart';

const String CCCD_DESCRIPTOR_UUID = "00002902-0000-1000-8000-00805f9b34fb";

void printGattTable(BluetoothDevice device) async {
  List<BluetoothService> services = await device.discoverServices();
  if (services.isEmpty) {
    print("No service and characteristic available, call discoverServices() first?");
    return;
  }

  for (BluetoothService service in services) {
    print("Service ${service.uuid}");

    for (BluetoothCharacteristic characteristic in service.characteristics) {
        //print("|-- ${characteristic.uuid}: ${characteristic.properties.join(', ')}");

      for (BluetoothDescriptor descriptor in characteristic.descriptors) {
        print("|------ ${descriptor.uuid}: ${descriptor.uuid == CCCD_DESCRIPTOR_UUID ? 'CCCD' : 'Other'}");
      }
    }
  }
}

extension BluetoothCharacteristicProperties on BluetoothCharacteristic {
  List<String> get properties {
    List<String> props = [];
    CharacteristicProperties characteristicProps = properties as CharacteristicProperties;

    if (characteristicProps.read) props.add("READABLE");
    if (characteristicProps.write) props.add("WRITABLE");
    if (characteristicProps.writeWithoutResponse) props.add("WRITABLE WITHOUT RESPONSE");
    if (characteristicProps.indicate) props.add("INDICATABLE");
    if (characteristicProps.notify) props.add("NOTIFIABLE");

    if (props.isEmpty) props.add("EMPTY");
    return props;
  }
}
