import 'package:clickADev/src/Data/Developper.dart';

class HTMLDevelopper extends Developper
{
  @override
  double computeNextBuyingPrice()
  {
    // TODO: Do the math :D
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
    return super.toString();
  }

  @override
  void upgrade()
  {
    // TODO: implement upgrade
    super.upgrade();
  }
}