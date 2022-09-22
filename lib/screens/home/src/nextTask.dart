import 'package:flutter/material.dart';
import 'package:lh_todo/resources/styles.dart';

class NextTask extends StatefulWidget {
  const NextTask({Key? key}) : super(key: key);

  @override
  State<NextTask> createState() => _NextTaskState();
}

class _NextTaskState extends State<NextTask> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 14, left: 47),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width - 41,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: NextTaskIcon(),
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
    );
  }
}
