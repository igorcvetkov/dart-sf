class AppContext{
  String accessToken;
  String instanceUri;
  
  static AppContext _instance;

  factory AppContext(){
    if(_instance == null){
      _instance =AppContext._internal();
    }
    return AppContext._instance;
  }

  AppContext._internal();

  AppContext setAccessToken(String token){
    this.accessToken = token;
    return this;
  }

  AppContext setInstanceUri(String uri){
    this.instanceUri = uri;
    return this;
  }

  bool isAuthorized(){
    bool isAccessTokenDefined = accessToken == null ? false : accessToken.isNotEmpty;
    bool isInstanceUrlDefined = instanceUri == null ? false : instanceUri.isNotEmpty;
    return isAccessTokenDefined && isInstanceUrlDefined;
  }
}