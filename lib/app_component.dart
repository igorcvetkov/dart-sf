import 'package:angular/angular.dart';

//import 'src/todo_list/todo_list_component.dart';
import 'src/sf_login/sf_login_component.dart';

import 'package:angular_router/angular_router.dart';
import 'src/routing/route_paths.dart';
import 'src/routing/routes.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    //TodoListComponent,
    SfLoginComponent,
    routerDirectives
  ],
  exports: [RoutePaths, Routes]
)
class AppComponent {}
