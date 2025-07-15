void main() {
  final p1 = Person(1, "Ahmed");
  final p2 = Person(1, "Ahmed");

  print(p1 == p2); // true
}

class Person {
  final int id;
  final String name;

  Person(this.id, this.name);

  @override
  bool operator ==(Object other) {
    return other is Person && other.id == id && other.name == name;
  }

  @override
  int get hashCode => Object.hashAll([name, id]);
}
