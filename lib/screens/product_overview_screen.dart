import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiapp1/widgets/contact_us.dart';
import 'package:uiapp1/widgets/product_grid.dart';

import '../email.dart';
import '../loginPage.dart';
import '../pages/about_us.dart';
import '../pages/browser_file.dart';
import '../widgets/product_grid.dart';

enum FilterOptions {
  Favourites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  List<String> _titles = ["MyCustomForm", "Profile", "Shop"];
  List<Widget> _items = [
    Text(
      'Index 0:MyCustomForm ',
    ),
    Text(
      'Index 1: Profile',
    ),
    Text(
      'Index 2: Shop',
    ),
  ];
  var _showOnlyFavourites = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        // bottom: TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.music_note)),
        //     Tab(icon: Icon(Icons.music_video)),
        //     Tab(icon: Icon(Icons.camera_alt)),
        //     Tab(icon: Icon(Icons.grade)),
        //     Tab(icon: Icon(Icons.email)),
        //   ],
        // ),
        title: Text('Pest Scout',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favourites) {
                  _showOnlyFavourites = true;
                } else {
                  _showOnlyFavourites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favourites'),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(child: Text('Show All'), value: FilterOptions.All),

            ],
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Icon(
                  Icons.account_circle,
                  //color: Colors.black87,
                  size: 20.0,
                ),
              )),
          //contact mail icon
          // Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: GestureDetector(
          //       onTap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => MyCustomForm()));
          //       },
          //       child: Icon(
          //         Icons.contact_mail,
          //         //color: Colors.black87,
          //         size: 20.0,
          //       ),
          //     )),
          // //browser icon
          // Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: GestureDetector(
          //       onTap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => Browser()));
          //       },
          //       child: Icon(
          //         Icons.open_in_browser,
          //
          //         semanticLabel: 'browser',
          //         //color: Colors.black87,
          //         size: 22.0,
          //       ),
          //     ))
        ],
      ),
      body: ProductsGrid(_showOnlyFavourites),
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
            // ListTile(
            //   leading: Icon(Icons.contact_mail),
            //   title: Text('Contact Us'),
            //   onTap: ()  {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => MyCustomForm()));
            //   },
            // ),
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
           ],
        ),
      ),


     // bottomNavigationBar: _showBottomNav(),
    );
  }

  // Widget _showBottomNav() {
  //   return BottomNavigationBar(
  //     mouseCursor: SystemMouseCursors.grab,
  //     items: [
  //       BottomNavigationBarItem(
  //         label: "Home",
  //         icon: Icon(Icons.home),
  //       ),
  //       // BottomNavigationBarItem(
  //       //   label: "Settings",
  //       //   icon: Icon(Icons.settings),
  //       // ),
  //       BottomNavigationBarItem(
  //         label: "Login",
  //         icon: Icon(Icons.login_outlined),
  //       ),
  //       BottomNavigationBarItem(
  //         label: "My Account",
  //         icon: Icon(Icons.account_circle_outlined),
  //       ),
  //     ],
  //     currentIndex: currentIndex,
  //     type: BottomNavigationBarType.fixed,
  //     selectedItemColor: Colors.green,
  //     // unselectedItemColor: Colors.white,
  //     backgroundColor: Colors.lightGreen[100],
  //     showUnselectedLabels: false,
  //     onTap: _onTap,
  //   );
  // }

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
