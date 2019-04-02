import 'package:ang/src/routing/routes.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/app_layout/material_persistent_drawer.dart';
import 'package:angular_router/angular_router.dart';

import 'src/navigation/main_navigation_component.dart';
import 'src/navigation/sidebar_component.dart';
import 'package:angular_components/content/deferred_content.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [
    MainNavigationComponent,
    SidebarComponent,
    DeferredContentDirective,
    MaterialPersistentDrawerDirective,
    DeferredContentDirective,
    routerDirectives
  ],
  styleUrls: const [
    'package:angular_components/app_layout/layout.scss.css',
    'app_component.css',
  ],
  exports: [Routes]
)
class AppComponent {
  
  handleSidebarToggle(event){
    print('handle sidebar toggle');
  }
}
