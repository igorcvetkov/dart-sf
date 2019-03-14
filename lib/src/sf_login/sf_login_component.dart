import 'dart:html';

import 'package:ang/src/sf_login/sf_login_request.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'sf-login',
  styleUrls: ['sf_login_component.css'],
  templateUrl: 'sf_login_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialSelectComponent,
    MaterialSelectItemComponent
  ]
)
class SfLoginComponent{
  String instanceSelection;

  void navigateToSFLogin(){
    String redirect_uri = "http://localhost:8080/logincallback.html";
    var clientId = "3MVG9Rd3qC6oMalXLHiEvTqnPsqLohssLVmTU_42JPP.VmzM2wexoncKotP_N7miB09ZbCj.rmvtg8Y1jINxV";
    SfLoginRequest request = SfLoginRequest
      .forProd()
      .usingClientId(clientId)
      .withRedirectToUrl(redirect_uri)
      .withResponseType("token")
      .forceLoginPage();
    Location l = window.location;
    l.href = request.prepareRequestUri();    
  }
}