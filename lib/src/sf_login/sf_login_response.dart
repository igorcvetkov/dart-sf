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
      Map<String, String> responseDataMap = Map.fromIterable(responseData, 
        key: (item) => item.toString().split("=")[0],
        value: (item) => item.toString().split("=")[1],
      );
      _mapResponseData(responseDataMap);
    }
  }

  SfLoginResponse.fromQueryParameters(Map<String, String> queryParams){
    _mapResponseData(queryParams);
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

  void _mapResponseData(Map<String, String> responseData){
    this.accessToken = responseData['access_token'];
    this.instanceUrl = responseData['instance_url'];
    this.id = responseData['id'];
    this.issuedAt = responseData['issued_at'];
    this.signature = responseData['signature'];
    this.scope = responseData['scope'];
    this.tokenType = responseData['token_type'];
  }


}