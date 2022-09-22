import 'package:flutter/material.dart';
import 'package:lh_todo/resources/styles.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 14, left: 27),
      child: GestureDetector(
        onTap: () {
          setState(() {
            checked = !checked;
          });
        },
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width - 41,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: checked,
                onChanged: (value) {
                  setState(() {
                    checked = value!;
                  });
                },
                checkColor: Colors.white,
                activeColor: Colors.black,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        checked),
                    TaskTextTime("12:42 PM", checked)
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
