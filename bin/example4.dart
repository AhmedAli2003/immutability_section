void main() {
  final data = <Person>{};

  data.add(Person(1, "Ahmed"));
  data.add(Person(1, "Ahmed"));

  print(Person(1, "Ahmed") == Person(1, "Ahmed")); // true

  print(data.length); // 1 ✅
  print(data);
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

  @override
  String toString() => "Person: $id, $name";
}
