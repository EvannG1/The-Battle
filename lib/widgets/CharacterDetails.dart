import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

/*
static const String STRENGTH = "strength";
  static const String SPEED = "speed";
  static const String CLEVERNESS = "cleverness";
  static const String INTELLIGENCE = "intelligence";
 */
class CharacterDetails extends StatelessWidget{

  final Character character;
  const CharacterDetails({Key key, Character this.character}) : super(key: key);

  @override
  Widget build(BuildContext Context){
    return Card(
      color: Colors.red[200],
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        character.name,
                        style: TextStyle(
                          fontFamily: 'Knewave', fontSize: 20,
                          shadows: [
                            Shadow(
                                color: Colors.red,
                                offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          decorationThickness: 2,
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Image(
                      image: AssetImage(character.imagePath()),
                      width: 100,
                    ),
                  ],
                )
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    "strength : ${character.strength.value}",
                    style: TextStyle(
                        fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                    ),
                  ),
                  Text(
                    "speed : ${character.speed.value}",
                    style: TextStyle(
                        fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                    ),
                  ),
                  Text(
                    "cleverness : ${character.cleverness.value}",
                    style: TextStyle(
                        fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                    ),
                  ),
                  Text(
                    "intelligence : ${character.intelligence.value}",
                    style: TextStyle(
                        fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}