import 'package:test/test.dart';
import 'package:clickADev/src/Data/HTMLDeveloper.dart';


void main()
{
  group("HTMLDeveloper Unit Test : ", ()
  {
    group("HTMLDeveloper Constructor : ", ()
    {
      test("Default Constructor .HTMLDeveloper() : ", ()
      {
        var dev = new HTMLDeveloper();
        expect(dev.name, "Bob");
        expect(dev.description, "Default Description");
        expect(dev.price, 10.0);
        expect(dev.productivity, 2.0);
        expect(dev.gain, 0.0);
        expect(dev.level, 1);
      });
      //TODO : If you have motivation test the others constructors
    });
    group ("HTMLDeveloper Methods : ", ()
    {
      test(".upgrade() : ", ()
      {
        var dev = new HTMLDeveloper();
        dev.upgrade();
        expect(dev.level, 2);
        expect(dev.productivity, 5.2);
        dev.level = 0;
        dev.productivity = 0.0;
        dev.upgrade();
        expect(dev.level, 1);
        expect(dev.productivity, 0);
        dev.productivity = 10.0;
        dev.upgrade();
        dev.upgrade();
        dev.upgrade();
        expect(dev.level, 4);
        expect(dev.productivity, 527.2800000000001);
      });
      test(".computeNextBuyingPrice() : ", ()
      {
        var dev = new HTMLDeveloper();
        expect(dev.computeNextBuyingPrice(), 15);
        dev.price = 3218.06873;
        expect(dev.computeNextBuyingPrice(), 4827.103095);
        dev.price = 0.0;
        expect(dev.computeNextBuyingPrice(), 0);
      });
      test(".computeNextUpgradePrice() : ", ()
      {
        var dev = new HTMLDeveloper();
        expect(dev.computeNextUpgradePrice(),12.5);
        dev.upgrade();
        expect(dev.computeNextUpgradePrice(), 25);
      });
    });
  });
}