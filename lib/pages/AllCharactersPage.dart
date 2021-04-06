import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterDetails.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/data/list-characters.dart' as listCharacters;

class AllCharactersPage extends StatefulWidget{

  const AllCharactersPage({ Key key }) : super(key: key);

  @override
  _AllCharactersPage createState() => _AllCharactersPage();

}

class _AllCharactersPage extends State<AllCharactersPage>{
  final List<Character> _characters = listCharacters.characters;
  Character _selectedCharacter = null;

  void _onCharacterPreviewEvent(Character character){
    setState(() {
      _selectedCharacter = character;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/the-battle-logo.png'),
              width: 100,
            )
          ],
        )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(_selectedCharacter != null)
              CharacterDetails(character: _selectedCharacter),
            Expanded(child: CharacterMaster(characters: _characters, parentCallback: _onCharacterPreviewEvent))
          ],
        ),
      ),
    );
  }
}