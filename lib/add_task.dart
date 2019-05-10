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
  String value = '';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              Container(
                child: DropdownButton<String>(
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    labelText: '开始时间',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    labelText: '结束时间',
                  ),
                  keyboardType: TextInputType.datetime,
                  
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '备注',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                width: screenSize.width,
                height: 46.0,
                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.red,
                  child: new Text(
                    '保存',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
