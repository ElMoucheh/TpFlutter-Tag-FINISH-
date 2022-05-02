import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tpflutter/choice_item.dart';

class Footer extends StatelessWidget {
  final List<String> tagsName;
  final List<String> checkColor;
  final Function clicked;

  const Footer(
      {Key? key,
      required this.tagsName,
      required this.clicked,
      required this.checkColor})
      : super(key: key);

  ChoiceItem colorTag(String tagName) {
    if (checkColor.contains(tagName)) {
      return ChoiceItem(
        tagName: tagName,
        colorSet: Colors.primaries[Random().nextInt(Colors.primaries.length)], // C'est pour le côté rigolo, sinon remplacer avec [Color.fromRGBO(235, 70, 108, 1),] :D
      );
    }
    return ChoiceItem(
      tagName: tagName,
      colorSet: Colors.black12,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: tagsName
            .map((item) => GestureDetector(
                  child: colorTag(item),
                  onTap: () => clicked(item),
                ))
            .toList(),
      ),
    );
  }
}
