import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String tagName;
  final Color colorSet;

  const ChoiceItem({
    Key? key,
    required this.tagName,
    required this.colorSet,
  }) : super(key: key);

  Color switchColorText(){
    if(colorSet == Colors.black12){
      return Colors.black87;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: SizedBox(
        child: Text(
          tagName,
          style: TextStyle(
            color: switchColorText(),
            fontWeight: FontWeight.normal,
            fontSize: 17,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: colorSet,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}
