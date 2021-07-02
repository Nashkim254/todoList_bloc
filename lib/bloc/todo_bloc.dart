import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_bloc/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super(<Todo>[]);

  @override
  Stream<List<Todo>> mapEventToState(
    TodoEvent event,
  ) async* {
    switch (event.eventType) {
      case EventType.add:
        List<Todo> todostate = List.from(state);
        if (event.todo != null) {
          todostate.add(event.todo);
        }
        yield todostate;
        break;
      case EventType.delete:
        List<Todo> todostate = List.from(state);
        todostate.removeAt(event.todoIndex);
        yield todostate;
        break;
      default:
        throw Exception("Event of type $event not found");
    }
  }
}
