import 'package:angular/angular.dart';

import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';

@Component(
  selector: 'main-navigation',
  templateUrl: 'main_navigation_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
  ],
  styleUrls: [
    'main_navigation_component.scss.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
)
class MainNavigationComponent {}
