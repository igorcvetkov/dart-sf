import 'dart:html';

import 'package:angular/angular.dart';

import 'src/navigation/main_navigation_component.dart';
import 'src/navigation/sidebar_component.dart';
import 'package:angular_components/content/deferred_content.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    MainNavigationComponent,
    SidebarComponent,
    DeferredContentDirective
  ],
  styleUrls: const [
      'app_component.css'
    ]//,
)
class AppComponent {
  
  handleSidebarToggle(event){
    print('handle sidebar toggle');
  }
}
