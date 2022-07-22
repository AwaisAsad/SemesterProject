import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../index.dart';

//void main() => runApp(MyApp());
_launchURLBrowser() async {
  String url1 = 'https://en.wikipedia.org/wiki/Cotton_production_in_Pakistan';
  final Uri url = Uri.parse(url1);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url1';
  }
}

_launchURLApp() async {
  String url1 = 'https://en.wikipedia.org/wiki/Cotton_production_in_Pakistan';
  final Uri url = Uri.parse(url1);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url1';
  }
}

class Browser extends StatefulWidget {
  @override
  State<Browser> createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Pest Scout App'),
    backgroundColor: Colors.lightGreen,
    leading: IconButton(icon:Icon(Icons.arrow_back),
    onPressed:() => Navigator.pop(context, false),

          // actions: <Widget>[
          //
          //   IconButton(
          //     icon: Icon(
          //       Icons.close_rounded,
          //       color: Colors.white60,
          //     ),
          //     onPressed: () {
          //       setState(() {
          //         Navigator.pop(context,
          //             MaterialPageRoute(builder: (context) => InputPage()));
          //       });
          //     },
          //   )
          // ],
        ),),
        body: SafeArea(
          child: Center(

            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child:const Text(
                    "Wellcome to Pest Scout !",
                    style: TextStyle(color:Colors.lightGreen,fontWeight: FontWeight.bold, fontSize: 16),
                  ),),
                SizedBox(height: 20,),
                Container(

                  alignment: Alignment.center,
                  padding: EdgeInsets.all(40),
                  child:const Text(
                    "For More Information About Cotton Crop you can read from browser",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),),

                Container(
                  height: 20.0,
                ),

                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.lightGreen,
                  onPressed: _launchURLBrowser,
                  child: Text('Open in Browser'),

                  padding: const EdgeInsets.all(5.0),
                ),
                Container(
                  height: 20.0,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.lightGreen,
                  onPressed: _launchURLApp,
                  child: Text('Open in App'),

                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
