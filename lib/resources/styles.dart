import 'package:flutter/material.dart';

Text TitleText(String label){
  return Text(label, style: const TextStyle(
    fontSize: 34,
    color: Colors.black
  ));
}

Text TaskText(String text, bool Crossed){
  return Text(text, style: TextStyle(
    fontSize: 15,
    color: const Color(0xff737373),
    decoration: Crossed == true ? TextDecoration.lineThrough : null
  ));
}

Text TaskTextTime(String text, bool Crossed){
  return Text(text, style: TextStyle(
    fontSize: 13,
    color: const Color(0xffA3A3A3),
    decoration: Crossed == true ? TextDecoration.lineThrough : null
  ));
}

Container NextTaskIcon(){
  return Container(
    height: 10,
    width: 10,
    decoration: const BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle
    ),
  );
}

Checkbox TaskCheck(bool checked){
  return Checkbox(
    value: checked,
    onChanged: (value){
      checked = value!;
    },
  );
}
