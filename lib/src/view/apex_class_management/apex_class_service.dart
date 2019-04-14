

import 'package:angular/core.dart';
import 'package:ang/src/sf_api/rest_apex_classes.dart';

@Injectable()
class ApexClassService{
  RestApexClasses _restApexClasses;

  ApexClassService(this._restApexClasses);

  Future<List<String>> getClasses() async {
    return this._restApexClasses.getClassNames();
  }
}