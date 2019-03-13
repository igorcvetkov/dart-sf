import 'sf_identity.dart';

class SfLoginResponse{
  String accessToken;
  String instanceUrl;
  String id;
  String issuedAt;
  String signature;
  String scope;
  String tokenType;

  SfLoginResponse.fromUri(Uri base) {
    if(base.hasFragment && base.fragment.contains("access_token")){
      String fragment = Uri.decodeComponent(base.fragment);
      List<String> responseData = fragment.split("&");
      _mapResponseData(responseData);
    }
  }

  bool isValid(){
    if(this.accessToken != null){
      return true;
    }

    return false;
  }

  SfIdentity initIdentity(){
    if(isValid()){
      SfIdentity sfIdentity = SfIdentity()
        .setAccessToken(this.accessToken)
        .setInstanceUri(this.instanceUrl);
      return sfIdentity;
    }

    return null;
  }

  void _mapResponseData(List<String> responseData){
    Map<String, String> responseDataMap = Map.fromIterable(responseData, 
      key: (item) => item.toString().split("=")[0],
      value: (item) => item.toString().split("=")[1],
    );

    this.accessToken = responseDataMap['access_token'];
    this.instanceUrl = responseDataMap['instance_url'];
    this.id = responseDataMap['id'];
    this.issuedAt = responseDataMap['issued_at'];
    this.signature = responseDataMap['signature'];
    this.scope = responseDataMap['scope'];
    this.tokenType = responseDataMap['token_type'];
  }


}