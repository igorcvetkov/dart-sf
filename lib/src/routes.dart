import 'package:angular_router/angular_router.dart';

import 'route_paths.template.dart';
import 'sf_login/sf_login_component.template.dart' as sf_login_template;
import 'sf_login/sf_login_callback_component.template.dart' as sf_login_callback_template;
import 'todo_list/todo_list_component.template.dart' as todo_list_template;

export 'route_paths.template.dart';

class Routes {
  static final authorizedView = RouteDefinition(
     routePath: RoutePaths.authorizedView,
     component: todo_list_template.TodoListComponentNgFactory,
  );

  static final sfLogin = RouteDefinition(
    routePath: RoutePaths.login,
    component: sf_login_template.SfLoginComponentNgFactory,
  );

  static final sfLoginCallback = RouteDefinition(
    routePath: RoutePaths.loginCallback,
    component: sf_login_callback_template.SfLoginCallbackComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    sfLogin,
    sfLoginCallback,
    authorizedView
  ];
}