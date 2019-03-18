import 'package:angular/angular.dart';

//import 'src/todo_list/todo_list_component.dart';
import 'src/sf_login/sf_login_component.dart';
import 'src/navigation/main_navigation_component.dart';
import 'src/routing/route_paths.dart';
import 'src/routing/routes.dart';

import 'package:angular_router/angular_router.dart';

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
