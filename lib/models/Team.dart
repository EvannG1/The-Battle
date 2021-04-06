import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';

class Team{
  final String uuid;
  Player player;
  List<Character> characters;

  Team(String this.uuid, Player this.player, List<Character> this.characters);
}