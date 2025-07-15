void main() {
  final p1 = Person(1, "Ahmed");
  print(p1.hashCode);

  final data = <Person>{};

  data.add(p1);

  print(data);

  // This mutation changes the hashCode, so Set lookup fails
  // Never mutate fields involved in equality/hashCode
  p1.name = "Osama"; // ❌ Dangerous mutation!
  print(p1.hashCode);

  print(p1);
  print(data);

  print(data.contains(p1));
}

class Person {
  int id;
  String name;

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
