void main() {
  final p1 = Person(1, "Ahmed");
  final p2 = Person(1, "Ahmed");

  print(p1 == p2); // false
}

class Person {
  final int id;
  final String name;

  Person(this.id, this.name);
}
