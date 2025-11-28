import 'device.dart';
import 'adjustable.dart';
import 'batterypowered.dart';

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int brightness = 50;
  SmartLamp(String name) : super(name);

  @override
  void turnOn() {
    print("Lamp $name is ON");
  }

  @override
  void turnOff() {
    print("Lamp $name is OFF");
  }

  @override
  void increase() {
    brightness -= 10;
    if (brightness < 0) brightness = 0;
    print("Brightness: $brightness");
  }

  @override
  void decrease() {
    brightness -= 10;
    if (brightness < 0) brightness = 0;
    print("Brightness: $brightness");
  }

  @override
  void showInfo() {
    print("Lamp name: $name, Brightness: $brightness");
  }
}
