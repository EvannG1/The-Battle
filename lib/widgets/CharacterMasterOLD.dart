import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';

class CharacterMaster extends StatelessWidget{

  final List <Character> characters;

  const CharacterMaster({Key key, List <Character> this.characters, this.parentCallback}) : super(key: key);

  final Function parentCallback;

  void _onCharacterPreviewEvent(Character character){
    parentCallback(character);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          for(Character character in characters ) CharacterPreview(character: character, parentCallback: _onCharacterPreviewEvent),
        ],
      ),
    );
  }
}