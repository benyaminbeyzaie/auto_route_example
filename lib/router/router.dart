import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/pages/page_one.dart';
import 'package:auto_route_example/pages/page_two.dart';
     
@MaterialAutoRouter(        
  replaceInRouteName: 'Page,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: PageOne, initial: true),        
    AutoRoute(page: PageTwo),        
  ],        
)        
class $AppRouter {}