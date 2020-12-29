import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String gender;
  String groupValue = 'male';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FlutterLogo(),
          Container(
            color: Colors.black.withOpacity(0.8),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: FlutterLogo(),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Form(
                  key: formkey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.4),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: 'Full Name',
                                icon: Icon(
                                  Icons.person_outline,
                                ),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'The name field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'male',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  trailing: Radio(
                                    value: 'male',
                                    groupValue: groupValue,
                                    onChanged: (e) {
                                      valueChanged(e);
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'female',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  trailing: Radio(
                                    value: 'female',
                                    groupValue: groupValue,
                                    onChanged: (e) {
                                      valueChanged(e);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.4),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                icon: Icon(
                                  Icons.alternate_email,
                                ),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'The email field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.4),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                icon: Icon(
                                  Icons.lock_outline,
                                ),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'The password field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.4),
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: confirmPasswordController,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                icon: Icon(
                                  Icons.lock_outline,
                                ),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'The confirm password field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.red.shade700,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void valueChanged(e) {
    setState(() {
      if (e == 'male') {
        groupValue = e;
      } else if (e == 'female') {
        groupValue = e;
      }
    });
  }
}
