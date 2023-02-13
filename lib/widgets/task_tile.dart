import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is A task'),
      trailing: CheckBoxWidget(),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override

  Widget build(BuildContext context) {
    return Checkbox(activeColor: Colors.lightBlueAccent, value: false, onChanged: null);
  }
}

