import 'package:ang/src/common/app_context.dart';
import 'package:ang/src/sf_login/sf_identity.dart';
import 'package:ang/src/sf_login/sf_login_response.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:ang/src/routing/route_paths.dart';


@Component(
  selector: 'sf-login-callback',
  template: '''
  <div>Sf login response received...</div>
  '''
)
class SfLoginCallbackComponent implements OnActivate{
  Router _router;

  SfLoginCallbackComponent(this._router);

  @override
  void onActivate(RouterState previous, RouterState current) {
    
    SfIdentity sfIdentity = SfLoginResponse.fromQueryParameters(current.queryParameters).initIdentity();
    if(sfIdentity != null){
      _setIdentityInAppContext(sfIdentity);
      _goToAuthorizedView();
    }
  }

  void _setIdentityInAppContext(SfIdentity identity){
    AppContext().setAccessToken(identity.accessToken).setInstanceUri(identity.instanceUri);
  }

  void _goToAuthorizedView(){
    this._router.navigate(RoutePaths.authorizedView.toUrl());
  }
}