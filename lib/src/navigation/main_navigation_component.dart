import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ang/src/routing/route_paths.dart';
import 'package:ang/src/routing/routes.dart';

import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';


@Component(
  selector: 'main-navigation',
  templateUrl: 'main_navigation_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    routerDirectives,
  ],
  styleUrls: [
    'main_navigation_component.scss.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
  exports: [RoutePaths, Routes],
)
class MainNavigationComponent {
  var toggleSidebarState = true;

  final _toggleSidebar = StreamController<bool>();
  @Output()
  Stream<bool> get toggleSidebar => _toggleSidebar.stream;
  
  handleSidebarToggle(){
    this.toggleSidebarState = !this.toggleSidebarState;
    this._toggleSidebar.add(this.toggleSidebarState);
  }
}