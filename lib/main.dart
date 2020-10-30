import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: -MediaQuery.of(context).size.height/6,
              right: -MediaQuery.of(context).size.width/2,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height/3,
                backgroundColor: Colors.blue[500],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/16,
              right: MediaQuery.of(context).size.width/2.1,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height/12,
                backgroundColor: Colors.blue[700],
              ),
            ),
            Positioned(
              bottom: -MediaQuery.of(context).size.height/2,
              left: -MediaQuery.of(context).size.width/2,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height/3,
                backgroundColor: Colors.blue[500],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/4,
              left: MediaQuery.of(context).size.width/50,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: MediaQuery.of(context).size.width/1.04,
                child: Card(
                  elevation: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 30.0, 0, 0),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                        child: TextFormField(
                          initialValue: "Email(Required)",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                        child: TextFormField(
                          initialValue: "Password(Required)",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 18.0
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/1.9,
              left: MediaQuery.of(context).size.width/1.35,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue[500],
                child: Icon(FontAwesomeIcons.angleRight),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/1.4,
              left: MediaQuery.of(context).size.width/4,
              child: Column(
                children: [
                  Text(
                    "Or Login With",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 50,
                      width: 250,
                      color: Colors.blue[700],
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Login with Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(
                    child: Container(
                      height: 50,
                      width: 250,
                      color: Colors.lightBlue[700],
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0, 16.0, 0),
                              child: Image.asset(
                                "assets/google_g.png"
                              ),
                            ),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: Text(
                "REGISTER",
                style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
