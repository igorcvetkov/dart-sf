import 'package:ang/src/sf_login/sf_identity.dart';
import 'package:ang/src/sf_login/sf_login_response.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'sf-login-callback',
  template: '''
  <div>Sf login response received...</div>
  '''
)
class SfLoginCallbackComponent implements OnActivate, OnInit{
  final Router _router;

  SfLoginCallbackComponent(this._router);

  @override
  void onActivate(RouterState previous, RouterState current) {
    SfIdentity sfIdentity = SfLoginResponse.fromUri(Uri.base).initIdentity();
    if(sfIdentity != null){
       //goAuthorizedView();
    }
    //current.queryParameters[""]
  }

  @override
  void ngOnInit() {
    // TODO: implement ngOnInit
    var x = 1;
    
    
  }

}