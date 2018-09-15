abstract class Developper
{
  //The price of the developper in LineOfCode
  double _price;

  //The number of LineOfCode produced by the Developper per seconds
  double _productivity;

  //Name
  String _name;

  //Description of the Developper
  String _description;

  //The amount of LineOfCode produced since the creation
  double _gain;

  //The current level of the Developper
  int _level;

  //==========GETTER AND SETTER==========//
  String get description
  {
    return _description;
  }

  set description(String value)
  {
    _description = value;
  }

  double get gain
  {
    return _gain;
  }

  set gain(double value)
  {
    _gain = value;
  }

  int get level
  => _level;

  set level(int value)
  {
    _level = value;
  }

  String get name
  {
    return _name;
  }

  set name(String value)
  {
    _name = value;
  }

  double get price
  {
    return _price;
  }

  set price(double value)
  {
    _price = value;
  }

  double get productivity
  {
    return _productivity;
  }

  set productivity(double value)
  {
    _productivity = value;
  }

  //=====================================//

  //==========METHODS==========//
  double computeNextBuyingPrice();

  double computeNextUpgradePrice();

  String toString()
  {
    String resStr = "Developper : \n";
    resStr += "\tName = $_name\n";
    resStr += "\tDescription = $_description\n";
    resStr += "\tLevel = $_level\n";
    resStr += "\tPrice = $_price\n";
    resStr += "\tProductivity = $_productivity LinesOfCode per Sec\n";
    resStr += "\tGain = $_gain LinesOfCode\n";

    return resStr;
  }

  void upgrade()
  {
    level++;
    productivity *= level * 1.3;
  }
//============================//


}
