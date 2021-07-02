part of 'todo_bloc.dart';

enum EventType { add, delete }

class TodoEvent {
  Todo todo;
  int todoIndex;
  EventType eventType;

  TodoEvent.add(todo) {
    this.eventType = EventType.add;
    this.todo = todo;
  }
  TodoEvent.delete(todoIndex) {
    this.eventType = EventType.delete;
    this.todoIndex = todoIndex;
  }
}
