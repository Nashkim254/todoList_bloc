import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';
import 'package:todo_bloc/models/todo_model.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: BlocConsumer<TodoBloc, List<Todo>>(
        listenWhen: (List<Todo> previous, List<Todo> current) {
          if (current.length > previous.length) {
            return true;
          }
          return false;
        },
        buildWhen: (List<Todo> previous, List<Todo> current) {
          return true;
        },
        builder: (context, todoList) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(todoList[index].todo),
                  onTap: () =>
                      context.read<TodoBloc>().add(TodoEvent.delete(index)),
                ),
              );
            },
          );
        },
        listener: (context, todoList) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Added')));
        },
      ),
    );
  }
}
