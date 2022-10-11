import 'package:flutter/material.dart';
import 'package:login_register/register_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(80)),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline),
                                hintText: "Username",
                                border: InputBorder.none),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline),
                                hintText: "Password",
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: -25,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 3, spreadRadius: 2)
                      ],
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: -100,
            top: -90,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.indigo,
            ),
          ),
          Positioned(
            left: -10,
            top: -150,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.indigo,
            ),
          ),
          Positioned(
            right: -150,
            bottom: -90,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.teal,
            ),
          ),
          Positioned(
            right: 00,
            bottom: -160,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
