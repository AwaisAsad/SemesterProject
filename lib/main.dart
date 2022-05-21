 import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';
import 'package:provider/provider.dart';
import 'screens/product_overview_screen.dart';
import 'screens/products_detail_screen.dart';
import 'providers/product_prov.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(240, 'MemfiZrR5boyiw0LaAg7Jg',);
  runApp( MyApp());
}
//
// 'AAAAYw0xWB8:APA91bHn8oVK47HJtDmhTfsGc9QBMgZl1v3aJWc5c6qcglqO-6tHuqniwUVTiDuRbPse-H4eLCiyOj_QX-lepLF4qz4cJJ4gCmeKTARApFD2Cl8VPDyIcQgI-De1FrDVrNRkqe65hxUG');
//
class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      //value: Productss(),
      create: (ctx)=>Productss(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.orange,
          fontFamily: 'Lato',
        ),
        home: SplashScreen(
            seconds: 3,
            navigateAfterSeconds: new ProductOverviewScreen(),

            title: new Text('Welcome TO PEST SCOUT', style: TextStyle(
              color: Colors.green,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),),
            image: new Image.asset('images/Logo.png'),
            backgroundColor: Colors.white70,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 150.0,

            loaderColor: Colors.green),
        //ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx)=>ProductDetailScreen(),
        },
      ),
    );
  }
}




