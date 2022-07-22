import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../index.dart';

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
        ),
        backgroundColor: Colors.lightGreen,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close_rounded,
              color: Colors.white60,
            ),
            onPressed: () {
              setState(() {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.android_outlined,
                size: 50,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome to the Support!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      //controller: _lastNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Name',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Enter Your Email',
                      ),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      //controller: _ageController,
                      keyboardType: TextInputType.number,
                      //textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(11)],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Enter Your Phone No',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Container(
                  height: MediaQuery.of(context).copyWith().size.height / 3,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(

                      cursorWidth: 20.0,

                      // controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write Your Query Here',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Info Alert"),
                            content: Text(
                              ("Your Request is Submitted! Our Team will Contact With you Soon"),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
