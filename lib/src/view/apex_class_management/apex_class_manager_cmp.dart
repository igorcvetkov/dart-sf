import 'package:angular/angular.dart';
import 'package:ang/src/sf_login/sf_identity.dart';
import 'package:ang/src/view/apex_class_management/apex_class_service.dart';

@Component(
  selector: 'apex-class-manager-view',
  template:'''
  <h1>Apex Classes</h1>
  ''',
  providers: [ClassProvider(ApexClassService)],
)
class ApexClassManagerCmp implements OnInit{
  ApexClassService apexClassService;
  SfIdentity identity = SfIdentity();
  List<String> classNames;

  ApexClassManagerCmp(this.apexClassService);

  @override
  Future<Null> ngOnInit() async {
    this.classNames = await apexClassService.getClasses();
  }
}