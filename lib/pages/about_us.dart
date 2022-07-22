import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pest Scout',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Objectives',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),

            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ), onPressed: () {  },),
                Text(
                  '⦁ 	Pest Scout will play an important role in Cotton field.',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ), onPressed: () {  },),
                Text(
                  '⦁  This App will predict the present disease in crop.',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ), onPressed: () {  },),
                Text(
                  '⦁   App will also give information about  diseases.',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),

            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ), onPressed: () {  },),
                Text(
                  '⦁  Use live camera scan option for the ease of users.',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
