import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  final _title;
  AddTask(this._title);
  @override
  _AddTaskState createState() => _AddTaskState();

}

class _AddTaskState extends State<AddTask> {

  final formKey = new GlobalKey<FormState>();
  String dropdownValue = 'One';
  String _value = '';

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Form(
          key: formKey,
          child: new Column(

            children: <Widget>[
              DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                ),
              TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '备注',
                ),
              ),
              MaterialButton(
                onPressed: (){},

                textColor: Colors.white,
                color: Colors.red,
                child: new Text(
                    '保存',
                    style: TextStyle(fontSize: 20.0),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}