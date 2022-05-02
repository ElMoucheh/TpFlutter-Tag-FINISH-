import 'package:flutter/material.dart';
import 'package:tpflutter/choice_item.dart';

class Header extends StatelessWidget {
  final List<String> tagsName;

  const Header({Key? key, required this.tagsName}) : super(key: key);

  Widget displayTags() {
    if (tagsName.isEmpty) {
      return const Text(
        "Cliquez sur les choix en dessous !",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 15,
          decoration: TextDecoration.none,
        ),
      );
    }
    List<ChoiceItem> items = tagsName
        .map((item) => ChoiceItem(
              tagName: item,
              colorSet: Colors.black12,
            ))
        .toList();
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              child: const Text(
                "Vos choix :",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  decoration: TextDecoration.none,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 7.0,
                      color: Color.fromARGB(80, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(0.0, 00.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(80, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 10.0,
                ),
                height: double.infinity,
                width: double.infinity,
                child: displayTags()),
          ),
        ],
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(240, 150, 118, 1),
            Color.fromRGBO(235, 70, 108, 1),
          ],
        ),
      ),
    );
  }
}
