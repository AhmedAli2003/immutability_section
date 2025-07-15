void main() {
  final p1 = Person(1, "Ahmed", ["reading", "coding"]);
  final p2 = Person(1, "Ahmed", ["reading", "coding"]);

  print(p1 == p2); // false ❌
}

class Person {
  final int id;
  final String name;
  final List<String> hobbies;

  Person(this.id, this.name, this.hobbies);

  @override
  bool operator ==(Object other) =>
      other is Person &&
      other.id == id &&
      other.name == name &&
      hobbies == other.hobbies; // ❌ List == List is by reference

  @override
  int get hashCode => Object.hash(id, name, hobbies);
}
