/// Author Alexi Coard

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:clickADev/src/localclass/core/game.dart';
import 'package:clickADev/src/pipes/number_format.dart';

import 'package:clickADev/src/components/developer/developer_component.dart';
import 'package:clickADev/src/Data/HTMLDeveloper.dart';
import 'package:clickADev/src/Data/Developer.dart';

@Component(
    selector: 'game',
    templateUrl: 'game_component.html',
    directives: [
      MaterialFabComponent,
      MaterialIconComponent,
      coreDirectives,
      DeveloperComponent,
    ],
    providers: [
      materialProviders,
    ],
    pipes: [NumberFormatPipe]
)
class GameComponent {
  Game game = Game();
  HTMLDeveloper developer = HTMLDeveloper();
  double getCurrentLinesOfCode() => game.getLinesOfCode();
  double getCurrentLinesPerSeconds() => game.getLinesPerSeconds();

  void addLinesFromClick() => game.addLinesFromClick();

  void buyDeveloper(Developer developer) {
    // Check if we can buy it
    if (developer.price <= game.getLinesOfCode()) {
      //TODO : when we have several developers, update all
      // A method like recalc or something which iterates over all the developers
      developer.upgrade();
      game.setLinesPerSeconds(developer.productivity);
      game.removeLinesOfCode(developer.price);
      developer.price = developer.computeNextBuyingPrice();
    }
  }
}