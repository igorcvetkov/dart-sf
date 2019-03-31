import 'package:angular_router/angular_router.dart';

import 'package:ang/src/routing/route_paths.dart';
import 'package:ang/src/sf_login/sf_login_component.template.dart' as sf_login_template;
import 'package:ang/src/sf_login/sf_login_callback_component.template.dart' as sf_login_callback_template;
import 'package:ang/src/todo_list/todo_list_component.template.dart' as todo_list_template;
import 'package:ang/src/view/about/about.template.dart' as about_template;
import 'package:ang/src/view/apex_class_management/apex_class_manager_cmp.template.dart' as apex_cls_mgr_template;

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
  
  static final aboutView = RouteDefinition(
    routePath: RoutePaths.about,
    component: about_template.AboutNgFactory,
  );

  static final apexClassManagement = RouteDefinition(
    routePath: RoutePaths.apexClassManagement,
    component: apex_cls_mgr_template.ApexClassManagerCmpNgFactory,
  );

  static final all = <RouteDefinition>[
    sfLogin,
    sfLoginCallback,
    authorizedView,
    aboutView,
    apexClassManagement
  ];
}