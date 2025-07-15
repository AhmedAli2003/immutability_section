import 'package:collection/collection.dart' show ListEquality;

void main() {
  final p1 = Person(1, "Ahmed", ["reading", "coding"]);
  final p2 = Person(1, "Ahmed", ["reading", "coding"]);

  print(p1 == p2);
}

class Person {
  final int id;
  final String name;
  final List<String> hobbies;

  Person(this.id, this.name, this.hobbies);

  static const _listEq = ListEquality<String>();

  @override
  bool operator ==(Object other) =>
      other is Person &&
      other.id == id &&
      other.name == name &&
      _listEq.equals(hobbies, other.hobbies);

  @override
  int get hashCode => Object.hash(id, name, _listEq.hash(hobbies));
}
