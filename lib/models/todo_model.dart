import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String todo;
  Todo(this.todo);

  @override
  List<Object> get props => [todo];
}
