void main() {
  final p1 = Person(1, "Ahmed");

  final data = <Person>{};

  data.add(p1);

  print(data);

  // Instead of mutating, we create a new object → Set integrity is preserved
  data.remove(p1);
  final p2 = p1.copyWith(name: "Osama");
  data.add(p2);

  print(data);

  print(data.contains(p1));
  print(data.contains(p2));
}

class Person {
  final int id;
  final String name;

  Person(this.id, this.name);

  Person copyWith({int? id, String? name}) {
    return Person(id ?? this.id, name ?? this.name);
  }

  @override
  bool operator ==(Object other) {
    return other is Person && other.id == id && other.name == name;
  }

  @override
  int get hashCode => Object.hashAll([name, id]);

  @override
  String toString() => "Person: $id, $name";
}
