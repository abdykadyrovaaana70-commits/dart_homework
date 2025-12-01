int totalCalls = 0;

void greet() {
  totalCalls++;
  print("Hello! Welcome to Dart programming!");
}

void introduce(String name, int age) {
  totalCalls++;
  print("My name is $name and I am $age years old.");
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}

void main() {
  greet();
  greet();
  greet();

  introduce("Alex", 25);
  introduce("Ariana", 18);
  introduce("Daniel", 30);

  int sum = addNumbers(5, 8);
  print("Sum of 5 and 8 is $sum.");

  double result1 = calculateDiscount(price: 100);
  print("Final price: \$$result1");

  double result2 = calculateDiscount(price: 200, discount: 10);
  print("Final price: \$$result2");

  double result3 = calculateDiscount(price: 150, discount: 5, tax: 3);
  print("Final price: \$$result3");

  print("Total function calls: $totalCalls");
}
