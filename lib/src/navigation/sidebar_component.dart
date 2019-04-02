import 'package:angular/angular.dart';

import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_list/material_list_item.dart';
 import 'package:angular_router/angular_router.dart';
import 'package:ang/src/routing/route_paths.dart';


@Component(
  selector: 'sidebar',
  templateUrl: 'sidebar_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    routerDirectives
  ],
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
  ],
  exports: [RoutePaths]
)
class SidebarComponent {
 
}