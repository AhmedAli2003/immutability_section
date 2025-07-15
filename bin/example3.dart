void main() {
  final data = <Person>{};

  data.add(Person(1, "Ahmed"));

  data.add(Person(1, "Ahmed"));

  // Same content but treated as different because `==` and `hashCode` are not overridden
  print(data.length); // 2 ❌ Unexpected
  print(data);
}

class Person {
  final int id;
  final String name;

  Person(this.id, this.name);

  @override
  String toString() => "Person: $id, $name";
}
