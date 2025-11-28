import 'device.dart';
import 'smartlamp.dart';
import 'smartspeaker.dart';
import 'smartthermostat.dart';
import 'adjustable.dart';
import 'batterypowered.dart';

void main(){
  List<Device> devices = [
    SmartLamp('Room Lamp'),
    SmartSpeaker('Home Speaker'), 
    SmartThermostat('Bedroom Thermostat'),
  ];
 for (var d in devices) {
  d.showInfo();
  d.turnOn();

  if (d is Adjustable) {
  (d as Adjustable).increase();
}

  if (d is BatteryPowered) {
    (d as BatteryPowered).showBattery();
  }
}
  print('All devices processed.');
}