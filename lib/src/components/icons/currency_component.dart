/// Author : Alexi Coard

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'currency',
  templateUrl: 'currency_component.html',
  directives: [
    MaterialIconComponent,
  ],
  providers: [
    materialProviders,
  ],
)

class CurrencyComponent {}