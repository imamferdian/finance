import 'package:finance/second_page.dart';
import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool passToggle = true;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Log In',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins')),
              )),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Container(
                  width: 161,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'GOOGLE',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                width: 161,
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'FACEBOOK',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'Inter', color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'or',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'SF Pro Display',
                color: Colors.black),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), // Sudut kiri atas
                topRight: Radius.circular(20.0), // Sudut kanan atas
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, top: 20),
                    child: Container(
                      width: 68,
                      height: 21,
                    ),
                  ),
                ),
                Container(
                  width: 327,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email Address",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFB8B8D2),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Container(
                    width: 327,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFB8B8D2),
                          ),
                        ),
                      ),
                      obscureText: _obscureText,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Container(
                      width: 125,
                      height: 21,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          height: 1.0,
                          color: Color.fromARGB(255, 245, 77, 21),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Center(
                  child: GestureDetector(
                    onTap: fungsiditekan,
                    child: Container(
                      width: 327,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 165, 172, 173),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            height: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 191,
                      height: 18,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            height: 1.0,
                          ),
                          children: [
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: Color(0xFF858597),
                              ),
                            ),
                            TextSpan(
                              text: "Register",
                              style: TextStyle(
                                color: Color(0xFF3D5CFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 22.77,
                    ),
                    SizedBox(
                      width: 22.77,
                    ),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void fungsiditekan() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return WelcomePage();
    }));
  }
}
