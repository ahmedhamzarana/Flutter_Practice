import 'package:flutter/material.dart';
import 'package:flutterapp/dashboard_screens.dart';
import 'package:flutterapp/screens/tabbar_screen.dart';

class SignScreens extends StatefulWidget {
  const SignScreens({super.key});

  @override
  State<SignScreens> createState() => _SignScreensState();
}

class _SignScreensState extends State<SignScreens> {
  bool _isObscureText = true;

  void changevisibility() {
    setState(() {
      _isObscureText = !_isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.purple, Colors.blueGrey],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(left: 20)),
                RotatedBox(
                  quarterTurns: 45,
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 30),

                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 10,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text("Username"),
                        prefixIcon: Icon(Icons.person, color: Colors.purple),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 10,
                    ),
                    child: TextField(
                      obscureText: _isObscureText,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.lock, color: Colors.purple),
                        suffixIcon: GestureDetector(
                          onTap: () => changevisibility(),
                          child: Icon(
                            _isObscureText
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Create An Account"),
                      ),

                      TextButton(
                        onPressed: () {},
                        child: Text("Forget Password?"),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreens(),
                        ),
                      );
                      //  Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => TabbarScreen()),
                      // );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
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
