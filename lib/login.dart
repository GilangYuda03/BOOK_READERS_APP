import 'package:book_readers_app/register.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final maxLines = 1;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 211, 89),
        ),
        child: ListView(
          children: [
            Container(
              height: 190,
              width: 190,
              margin: EdgeInsets.only(top: 150),
              child: Image(
                image: AssetImage("assets/logo.png"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 50, right: 50),
              child: TextField(
                cursorColor: Color.fromARGB(255, 176, 205, 176),
                maxLines: maxLines,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: "Enter a Username",
                  prefixIcon: Icon(
                    Icons.people,
                    color: Color.fromARGB(255, 114, 111, 111),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  fillColor: Colors.white.withOpacity(0.3),
                  filled: true,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 50, right: 50),
              child: TextField(
                cursorColor: Color.fromARGB(255, 176, 205, 176),
                maxLines: maxLines,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: "Enter a Password",
                  prefixIcon: Icon(Icons.key,
                      color: Color.fromARGB(255, 114, 111, 111)),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  fillColor: Colors.white.withOpacity(0.3),
                  filled: true,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 50, right: 50),
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 176, 205, 176),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 114, 111, 111),
                    // fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Container(
                    child: Text('Register Now ? '),
                  ),
                  Container(
                    child: TextButton(
                      child: Text('Create on account'),
                      onPressed: (() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return register();
                        }));
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
