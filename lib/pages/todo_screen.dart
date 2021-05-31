import 'package:flutter/material.dart';
import 'package:todo_bloc/constants/styles.dart';

class CreateTodo extends StatefulWidget {
  @override
  _CreateTodoState createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  final bool isFromEdit = false;
  static var _priorities = ['High, Low'];

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isFromEdit ? Text('Create') : Text('Edit'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
          child: Column(
            children: [
              ListTile(
                title: DropdownButton(
                  items: _priorities.map((String dropDownItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownItem,
                      child: Text(dropDownItem),
                    );
                  }).toList(),
                  style: Styles.bodyTextStyle,
                  value: 'Low',
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: TextField(
                  style: Styles.bodyTextStyle,
                  controller: titleController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: 'Title', labelText: 'Program', border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: TextField(
                  style: Styles.bodyTextStyle,
                  controller: descController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Description',
                    labelText: 'Todo code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text('Save'),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                        child: ElevatedButton(
                      child: Text('Delete'),
                      onPressed: () {},
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
