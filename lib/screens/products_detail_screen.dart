import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:uiapp1/providers/product_prov.dart';

import '../email.dart';
import '../index.dart';
import '../loginPage.dart';
import '../pages/about_us.dart';
import '../pages/browser_file.dart';
import '../widgets/contact_us.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-details';

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  // final String title;
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute
        .of(context)!
        .settings
        .arguments as String;
    final LoadProducts = Provider
        .of<Productss>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
            LoadProducts.title
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close_rounded,
              size: 25.0,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                LoadProducts.imgUrl,
                fit: BoxFit.cover,
              ),
            ),


            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                LoadProducts.description,

                textAlign: TextAlign.center,
                softWrap: true,

                style: TextStyle(fontSize: 15,color: Colors.black87),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [UserAccountsDrawerHeader(
            accountName: Text("Pest Scout App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
            accountEmail: Text(""),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/Logo.png',
                  //colorBlendMode: BlendMode.color,
                  //'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,

                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    //'images/go-green.jpg'),
                    //'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                      'https://images.unsplash.com/photo-1550147760-44c9966d6bc7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max')
              ),
            ),
          ),
            //   ListTile(
            //   leading: Icon(Icons.more_vert),
            //   title: Text('Favorites'),
            //   onTap: () => PopupMenuButton(
            //     onSelected: (FilterOptions selectedValue) {
            //       setState(() {
            //         if (selectedValue == FilterOptions.Favourites) {
            //           _showOnlyFavourites = true;
            //         } else {
            //           _showOnlyFavourites = false;
            //         }
            //       });
            //     },
            //     icon: Icon(Icons.more_vert),
            //     itemBuilder: (_) => [
            //       PopupMenuItem(
            //         child: Text('Only Favourites'),
            //         value: FilterOptions.Favourites,
            //       ),
            //       PopupMenuItem(child: Text('Show All'), value: FilterOptions.All),
            //
            //     ],
            //   ),
            // ),
            ListTile(
              leading: Icon(Icons.open_in_browser),
              title: Text('Browser'),
              onTap: ()  {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Browser()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: ()  {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyCustomForm()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              } ,
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('SignUp'),
              onTap: ()  {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.login),
            //   title: Text('Login'),
            //   onTap: () => null,
            // ),
            Divider(),
            ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => email()));
              },

            ),],
        ),
      ),
    );

      // body: Center(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.all(15.0),
      //         // child: Text(
      //         //   "Image Slider Example in Flutter using Carousel_Pro Library",
      //         //   style: TextStyle(
      //         //       color: Colors.blue,
      //         //       fontSize: 25.0,
      //         //       letterSpacing: 2,
      //         //       fontStyle: FontStyle.italic,
      //         //       fontWeight: FontWeight.bold),
      //         // ),
      //       ),
      //       SizedBox(
      //           height: 300.0,
      //           width: double.infinity,
      //           child: Carousel(
      //             images: const [
      //               AssetImage('images/bact8.jpg'),
      //               AssetImage('images/bact149.png'),
      //               AssetImage('images/bact275.jpg'),
      //               AssetImage('images/bact154.jpg'),
      //               AssetImage('images/bact11.jpg'),
      //               AssetImage('images/bact16.jpg'),
      //               AssetImage('images/bact106.jpg'),
      //
      //               AssetImage('images/bact107.jpg'),
      //
      //             ],
      //             dotColor: Colors.red,
      //           )),
      //     ],
      //   ),
      // ),

  }
}
