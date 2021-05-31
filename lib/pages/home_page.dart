import 'package:flutter/material.dart';
import 'package:todo_bloc/constants/pallete.dart';
import 'package:todo_bloc/pages/todo_screen.dart';

class HomePage extends StatelessWidget {
  final bool highPriority = false;
  final int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: SafeArea(child: getListView()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateTodo()));
        },
      ),
    );
  }

  ListView getListView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          return ListView(
            children: [
              Card(
                elevation: 2,
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateTodo()));
                  },
                  leading: Container(
                    margin: EdgeInsets.only(left: 12.0, top: 5),
                    color: highPriority ? Colors.red : Colors.yellow,
                    child: Center(
                      child: Icon(Icons.play_arrow),
                    ),
                  ),
                  title: Text('Title'),
                  subtitle: Text('26/5/2021'),
                  trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
                ),
              )
            ],
          );
        });
  }
}
