import 'package:equatable/equatable.dart';

void main() {
  final p1 = Person(1, "Ahmed", ["reading", "coding"]);
  final p2 = Person(1, "Ahmed", ["reading", "coding"]);

  print(p1 == p2);
}

class Person extends Equatable {
  final int id;
  final String name;
  final List<String> hobbies;

  Person(this.id, this.name, this.hobbies);
  
  @override
  List<Object?> get props => [id, name, hobbies];
}
