import 'package:dbus/dbus.dart';
import 'package:networkmanager/networkmanager.dart';

void main() async {
  var systemBus = DBusClient.system();
  var client = NetworkManagerClient(systemBus);
  await client.connect();
  for (var connection in client.activeConnections) {
    print('${connection.id}');
  }
  await systemBus.close();
}
