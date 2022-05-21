import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiapp1/widgets/contact_us.dart';
import 'package:uiapp1/widgets/product_grid.dart';

import '../email.dart';
import '../loginPage.dart';
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
        title: Text('Pest Scout'),
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
              // PopupMenuItem(
              //     child: Text('Contact Us'),
              //     value: Navigator.push(
              //         context, MaterialPageRoute(builder: (context)=>email()))),
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
                  color: Colors.black87,
                  size: 20.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()));
                },
                child: Icon(
                  Icons.contact_mail,
                  color: Colors.black87,
                  size: 20.0,
                ),
              ))
        ],
      ),
      body: ProductsGrid(_showOnlyFavourites),


      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        // BottomNavigationBarItem(
        //   label: "Settings",
        //   icon: Icon(Icons.settings),
        // ),
        BottomNavigationBarItem(
          label: "Login",
          icon: Icon(Icons.login_outlined),
        ),
        BottomNavigationBarItem(
          label: "My Account",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      // unselectedItemColor: Colors.white,
      backgroundColor: Colors.lightGreen[100],
      showUnselectedLabels: false,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
