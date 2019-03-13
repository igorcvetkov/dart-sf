import 'dart:html';

class sfWebAuth{
  void redirectToSFLogin(){
      var loginURL = "https://login.salesforce.com/services/oauth2/authorize";
      var response_type = "token";
      var redirect_uri = "http://localhost:8080";
      var clientId = "3MVG9Rd3qC6oMalXLHiEvTqnPsqLohssLVmTU_42JPP.VmzM2wexoncKotP_N7miB09ZbCj.rmvtg8Y1jINxV";

      HttpRequest request = new HttpRequest();
      request.open("GET", loginURL +"?response_type="+response_type+"&client_id="+clientId+"&redirect_uri="+redirect_uri);
      request.send();
  }

  void registerApp(){
    var registerEndpoint = "https:///services/oauth2/register";
    HttpRequest registerAppRequest = new HttpRequest();

    registerAppRequest.open('POST', '');
  }
}