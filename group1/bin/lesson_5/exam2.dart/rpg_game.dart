import 'boss.dart';
import 'hero.dart';

class RpgGame {
  static int roundNumber = 1;
  static void start(Boss boss, List<Hero> heroes) {
    while (!isGameFinished(boss, heroes)) {
      print('Round 1 $roundNumber');

      boss.attack(heroes);
      for (var hero in heroes) {
        hero.attack(boss);
        hero.applySuperPower(boss, heroes);
      }
      roundNumber++;
    }
  }

  static bool isGameFinished(Boss boss, List<Hero> heroes) {
    if (boss.health <= 0) {
      print('\nThe heroes won');
      return true;
    }

    bool allDead = heroes.every((h) => h.health <= 0);

    if (allDead) {
      print('\nThe boss won');
      return true;
    }

    return false;
  }
}
