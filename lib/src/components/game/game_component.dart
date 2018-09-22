/// Author Alexi Coard

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:clickADev/src/localclass/core/game.dart';
import 'package:clickADev/src/pipes/number_format.dart';

import 'package:clickADev/src/components/developer/developer_component.dart';
import 'package:clickADev/src/Data/HTMLDeveloper.dart';

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
}