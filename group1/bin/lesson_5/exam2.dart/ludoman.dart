import 'boss.dart';
import 'hero.dart';
import 'super_ability.dart';
import 'dart:math';

class Ludoman extends Hero {
  final Random _random = Random();

  Ludoman(int health, int damage) : super(health, damage, SuperAbility.Ludoman);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (health <= 0) return;

    int wow1 = _random.nextInt(6) + 1;
    int wow2 = _random.nextInt(6) + 1;

    print('Ludoman rolled the dice: $wow1 and $wow2');
    if (wow1 == wow2) {
      int damage = wow1 * wow2;
      boss.health -= damage;
      print('Matched! Ludoman deals $damage damage to the Boss!');
    } else {
      List<Hero> alive = heroes.where((h) => h.health > 0).toList();
      if (alive.isNotEmpty) {
        Hero teammate = alive[_random.nextInt(alive.length)];
        int damage = wow1 + wow2;
        teammate.health -= damage;

        print(
          'Not matched! Ludoman accidentally hits ${teammate.runtimeType} for $damage damage!',
        );
      }
    }
  }
}
