import 'dart:core';

class SfLoginRequest{
  String _loginUrl;
  String _responseType;
  // String _redirectUri;
  String _clientId;
  bool _forceLoginPage = false;

  SfLoginRequest.forTest() {
    this._loginUrl = "test";
  }

  SfLoginRequest.forProd(){
    this._loginUrl = "login";
  }

  SfLoginRequest withResponseType(String type){
    this._responseType =type;
    return this;
  }

  // SfLoginRequest withRedirectToUrl(String url){
  //   this._redirectUri =url;
  //   return this;
  // }
  
  // SfLoginRequest withDefaultRedirectToUrl(){
  //   this._redirectUri = Uri.base.origin+'/logincallback.html';
  //   return this;
  // }

  SfLoginRequest usingClientId(String id){
    this._clientId = id;
    return this;
  }

  SfLoginRequest forceLoginPage(){
    this._forceLoginPage = true;
    return this;
  }

  String prepareRequestUri(){
    var encodedRedirectUri =_getEncodedUri();
    var loginUrl = "https://"+this._loginUrl+".salesforce.com/services/oauth2/authorize?"+
      "response_type="+this._responseType+
      "&client_id="+this._clientId+
      "&redirect_uri="+encodedRedirectUri;
    if(this._forceLoginPage){
      loginUrl += "&prompt=login%20consent";
    }

    return loginUrl;
  }

  String _getEncodedUri(){
    
    var sourceUri = Uri.base.origin+'/logincallback.html';
    var encodedUri = Uri.encodeComponent(sourceUri);
    return encodedUri;
  }
}