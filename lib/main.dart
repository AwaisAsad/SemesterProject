import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';
import 'package:provider/provider.dart';
import 'screens/product_overview_screen.dart';
import 'screens/products_detail_screen.dart';
import 'providers/product_prov.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(240, 'MemfiZrR5boyiw0LaAg7Jg',);
  runApp( MyApp());
}

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
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx)=>ProductDetailScreen(),
        },
      ),
    );
  }
}




