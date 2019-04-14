import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ang/app_component.template.dart' as ng;
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'main.template.dart' as self;

 const useHashLS = false;
 @GenerateInjector([
   routerProvidersHash, // You can use routerProviders in production
   ClassProvider(Client, useClass: BrowserClient),
 ])
 final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
