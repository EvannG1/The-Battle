class Skill{
  String kind;
  int value; //min 0, max 5

  static const String STRENGTH = "strength";
  static const String SPEED = "speed";
  static const String CLEVERNESS = "cleverness";
  static const String INTELLIGENCE = "intelligence";


  Skill(String this.kind, int this.value);
}