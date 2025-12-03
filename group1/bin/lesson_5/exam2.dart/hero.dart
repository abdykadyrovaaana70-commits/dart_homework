import 'super_ability.dart';
import 'boss.dart';

abstract class Hero {
  int health;
  int damage;
  final SuperAbility ability;

  Hero(this.health, this.damage, this.ability);

  void attack(Boss boss){
    if (health > 0){
      boss.health -= damage;
    }
  }
  void applySuperPower (Boss boss, List<Hero> heroes);
}