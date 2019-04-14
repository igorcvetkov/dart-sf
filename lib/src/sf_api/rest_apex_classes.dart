import 'package:ang/src/sf_login/sf_identity.dart';
import 'package:http/http.dart';

class RestApexClasses{
  Client _http;
  SfIdentity _identity;

  static final _headers = {'Content-Type': 'application/json'};
  static final _apexClassUri = '/services/data/tooling/v45.0/sobjects/';

  RestApexClasses(this._http, this._identity);

  Future<List<String>> getClassNames() async {
    List<String> classNames;

    try{
      _headers.addAll({'Authorization': 'Bearer ' + this._identity.accessToken});
      var getRequest = this._http.get(this._identity.instanceUri + _apexClassUri, headers: _headers);
      getRequest.then(
        (response) =>{
          print(response)
        }
      ).catchError(
        (ex) => { 
          print(ex)
        }
      );
    
    }
    catch(ex){
      print(ex);
    }
    
    return classNames;
  }
}