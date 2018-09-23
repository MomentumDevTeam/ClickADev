import 'package:clickADev/src/Data/Developer.dart';

class HTMLDeveloper extends Developer
{

  //==========CONSTRUCTOR==========//
  HTMLDeveloper({String name:"Html dev",String description:"Is this even a language ?",double price:10.0,double productivity:2.0,double gain:0.0,int level:1})
  {
    this.name = name;
    this.description = description;
    this.price=price;
    this.productivity=productivity;
    this.gain=gain;
    this.level=level;
  }
  //=============================//


  @override
  double computeNextBuyingPrice()
  {
    // TODO: Do the math !
    return (this.price * 1.5);
  }

  @override
  double computeNextUpgradePrice()
  {
    // TODO: Do the math !
    return (this.price * 1.25 * this.level);
  }


  @override
  String toString()
  {
    // TODO: implement toString
    return "HTML " + super.toString();
  }

  @override
  void upgrade()
  {
    // TODO: implement upgrade
    super.upgrade();
    this.productivity *= this.level * 1.3;
  }

  String getImageUrl()
  {
    return 'assets/images/developers/html5.svg';
  }
}