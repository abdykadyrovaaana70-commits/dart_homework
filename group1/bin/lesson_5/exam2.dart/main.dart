import 'boss.dart';
import 'ludoman.dart';
import 'rpg_game.dart';
import 'hero.dart';

void main(){
  Boss boss = Boss(500, 20);

  List heroes = [
    Ludoman(260, 10),
  ];

  RpgGame.start(boss, heroes);
}