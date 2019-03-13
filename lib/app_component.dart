import 'package:angular/angular.dart';

//import 'src/todo_list/todo_list_component.dart';
import 'src/sf_login/sf_login_component.dart';
import 'src/sf_login/sf_login_response.dart';
import 'src/sf_login/sf_identity.dart';

import 'package:angular_router/angular_router.dart';
import 'src/route_paths.dart';
import 'src/routes.dart';

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
class AppComponent implements OnInit{
  final Router _router;

  AppComponent(this._router);

  @override
  void ngOnInit() {
    SfIdentity sfIdentity = SfLoginResponse.fromUri(Uri.base).initIdentity();
    if(sfIdentity != null){
       goAuthorizedView();
    }
  }
  
  Future<NavigationResult> goAuthorizedView(){
    return _router.navigate(RoutePaths.authorizedView.toUrl());
  } 
}
