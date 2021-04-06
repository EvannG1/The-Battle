import 'package:the_battle/models/Skill.dart';

class Character{
  final String uuid, name;
  Skill strength;
  Skill cleverness;
  Skill intelligence;
  Skill speed;

  Character(String this.uuid, String this.name, Skill this.strength, Skill this.speed, Skill this.cleverness, Skill this.intelligence);

  String imagePath() {
    return 'assets/images/characters/character-' + this.uuid + '.png';
  }
}