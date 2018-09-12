/// Author Alexi Coard

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:clickADev/src/localclass/core/game.dart';

@Component(
  selector: 'game',
  templateUrl: 'game_component.html',
  directives: [
    MaterialFabComponent,
    MaterialIconComponent,
  ],
  providers: [
    materialProviders,
  ],
)
class GameComponent {
  Game game = Game();

  double getCurrentLinesOfCode() => game.getLinesOfCode();
  double getCurrentLinesPerSeconds() => game.getLinesPerSeconds();

  void addLinesFromClick() => game.addLinesFromClick();
}