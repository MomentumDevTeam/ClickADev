/// Author Alexi Coard

import 'package:angular/angular.dart';

import '../../localclass/core/game.dart';

@Component(
  selector: 'game',
  templateUrl: 'game_component.html',
)
class GameComponent {
  Game game = Game();
  var name = 'Angular';

  double getCurrentLinesOfCode() => game.getLinesOfCode();
  double getCurrentLinesPerSeconds() => game.getLinesPerSeconds();
}