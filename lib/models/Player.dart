import 'package:the_battle/models/Team.dart';

class Player{
  final String uuid;
  final String firstname;
  final String lastname;
  final String email;
  final int gender; //1 = male / 2 = female
  Team team;

  Player(String this.uuid, String this.firstname, String this.lastname, String this.email, int this.gender, Team this.team){
    if(this.gender != 1 || this.gender != 2)
      throw new Exception('Gender doit être égale à 1 (male) ou 2 (female), please try again');
  }

}