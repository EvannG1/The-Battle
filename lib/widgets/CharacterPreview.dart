import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterPreview extends StatefulWidget{

  final Character character;
  final bool visited;
  const CharacterPreview({Key key, Character this.character, this.parentCallback, bool this.visited}) : super(key: key);

  final Function parentCallback;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  bool _selected = false;

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.widget.parentCallback(widget.character);
        setState(() {
          _selected = !_selected;
        });
      },
      child: Card(
        color: widget.visited ? Colors.red[300] : Colors.red[400],
        child: ListTile(
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage(widget.character.imagePath()),
              width: 100,
            ),
          ),
          title: Text(
            widget.character.name,
            style: TextStyle(
                fontFamily: 'Knewave', fontSize: 20, color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}