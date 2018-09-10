import 'package:angular/angular.dart';
@Component(
  selector: 'game',
  template: '<h1>The game</h1>',
)
class AppComponent {
  var name = 'Angular';
  List<dynamic> buildingList = [];
}