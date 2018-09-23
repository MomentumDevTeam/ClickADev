/// Author Alexi Coard
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:clickADev/src/pipes/number_format.dart';
import 'package:clickADev/src/components/icons/currency_component.dart';
import 'package:clickADev/src/Data/Developer.dart';

@Component(
    selector: 'developer',
    templateUrl: 'developer_component.html',
    directives: [
      MaterialFabComponent,
      MaterialIconComponent,
      coreDirectives,
      CurrencyComponent,
    ],
    providers: [
      materialProviders,
    ],
    pipes: [NumberFormatPipe],
)

class DeveloperComponent {
  @Input()
  Developer developer;

  @Input()
  bool disabled = true;
}