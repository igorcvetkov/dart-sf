class SfIdentity{
  String accessToken;
  String instanceUri;
  
  static SfIdentity _instance;

  factory SfIdentity(){
    if(_instance == null){
      _instance =SfIdentity._internal();
    }
    return SfIdentity._instance;
  }

  SfIdentity._internal();

  SfIdentity setAccessToken(String token){
    this.accessToken = token;
    return this;
  }

  SfIdentity setInstanceUri(String uri){
    this.instanceUri = uri;
    return this;
  }
}