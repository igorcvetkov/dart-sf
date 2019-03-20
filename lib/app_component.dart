import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:ang/src/routing/route_paths.dart';
import 'src/sf_login/sf_login_component.dart';
import 'src/navigation/main_navigation_component.dart';
import 'src/routing/route_paths.dart';
import 'src/routing/routes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    SfLoginComponent,
    MainNavigationComponent,
    routerDirectives
  ],
  styleUrls: const [
      'app_component.css'
    ],
  exports: [RoutePaths, Routes]
)
class AppComponent {}
