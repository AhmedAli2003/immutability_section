import 'package:equatable/equatable.dart';

void main() {
  final p1 = Person(1, "Ahmed");
  final p2 = Person(1, "Ahmed");

  print(p1 == p2);
}

// Equatable handles == and hashCode automatically
class Person extends Equatable {
  final int id;
  final String name;

  Person(this.id, this.name);
  
  @override
  List<Object?> get props => [id, name];
}
