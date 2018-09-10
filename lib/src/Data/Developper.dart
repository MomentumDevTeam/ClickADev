class Developper
{
  //The price of the developper in LineOfCode
  double _price;

  //The number of LineOfCode produced by the Developper
  double _productivity;

  //Programming Language
  String _language;

  //The amount of LineOfCode produced this the creation
  double _gain;

  //Multiplier bonus
  int _bonus;

  //==========GETTER AND SETTER==========//
  int get bonus
  {
    return _bonus;
  }

  set bonus(int value)
  {
    _bonus = value;
  }

  double get gain
  {
    return _gain;
  }

  set gain(double value)
  {
    _gain = value;
  }

  String get language
  {
    return _language;
  }

  set language(String value)
  {
    _language = value;
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
}
