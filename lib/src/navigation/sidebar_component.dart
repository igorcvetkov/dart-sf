import 'package:angular/angular.dart';

import 'package:angular_components/app_layout/material_persistent_drawer.dart';

import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_list/material_list_item.dart';


@Component(
  selector: 'sidebar',
  templateUrl: 'sidebar_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialListComponent,
    MaterialListItemComponent,
  ],
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
  ],
)
class SidebarComponent {
  toggle(){
    print('sidebar toggle');
  }
}