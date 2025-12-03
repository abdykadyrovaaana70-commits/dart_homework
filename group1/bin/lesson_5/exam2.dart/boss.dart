class Boss {
  int health;
  int damage;

  Boss(this.health, this.damage);

  void attack(List heroes) {
    for (var hero in heroes) {
      if (hero.health > 0) {
        hero.health -= damage;
      }
    }
  }
}
