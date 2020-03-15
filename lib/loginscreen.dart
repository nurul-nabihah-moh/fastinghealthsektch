import 'package:flutter/material.dart';
import 'package:fastinghealthsektch/registerscreen2.dart';

bool _isChecked = true;
final TextEditingController _emailCont = TextEditingController();

final TextEditingController _passCont = TextEditingController();

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('FastingHealth'),
      ),
      body: new Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/splashscreen.jpeg',
              width: 200,
              height: 200,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _emailCont,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(12),
                        border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        )),
                      ),
                    ),
                    SizedBox(height: 2),
                    TextField(
                      controller: _passCont,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(12),
                        border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        )),
                      ),
                      obscureText: true,
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {},
                ),
                Text('Remember Me',
                    style: TextStyle(color: Colors.white, fontSize: 16))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minWidth: 100,
              height: 40,
              child: Text('Login',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              color: Colors.white,
              textColor: Colors.white,
              onPressed: _onPress,
            ),
            SizedBox(
              height: 5,
            ),
            Text("Dont have an account?",
                style: TextStyle(color: Colors.white, fontSize: 12)),
            GestureDetector(
              onTap: _user,
              child: Text("Register new account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Forgot password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  void _user() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterScreen2()));
  }
}

void _onPress() {
  print(_emailCont.text);
  print(_passCont.text);
}
