import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';
import 'package:the_battle/widgets/CharacterDetails.dart';

class CharacterMaster extends StatefulWidget {

  final List <Character> characters;

  const CharacterMaster(
      {Key key, List <Character> this.characters, this.parentCallback})
      : super(key: key);

  final Function parentCallback;

  @override
  _CharacterMasterState createState() => _CharacterMasterState();
}
class _CharacterMasterState extends State<CharacterMaster>{

  Character _selectedCharacter = null;

  void _onCharacterPreviewEvent(Character character){
    setState(() {
      this._selectedCharacter = character;
    });
    widget.parentCallback(character);
  }

  bool isVisited(Character character){
    if(this._selectedCharacter == null){
      return false;
    }else if(this._selectedCharacter.uuid == character.uuid){
      return true;
    }else{
      return false;
    }
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          for(Character character in widget.characters ) CharacterPreview(character: character, parentCallback: _onCharacterPreviewEvent,
            visited: isVisited(character)
          ),
        ],
      ),
    );
  }
}