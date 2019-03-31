import 'package:angular/angular.dart';

import 'src/navigation/main_navigation_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    MainNavigationComponent//,
  ],
  styleUrls: const [
      'app_component.css'
    ]//,
)
class AppComponent {}
