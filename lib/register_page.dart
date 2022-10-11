import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register/login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 45),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 230,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(80),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: "Username",
                                border: InputBorder.none),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline),
                                labelText: "Password",
                                border: InputBorder.none),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                labelText: "Email Address",
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: -35,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 38,
                      child: Icon(
                        Icons.done_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: -40,
            left: -90,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.orange,
            ),
          ),
          Positioned(
            top: -110,
            left: 10,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.deepOrange,
            ),
          ),
          Positioned(
            bottom: -50,
            right: -120,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.orange,
            ),
          ),
          Positioned(
            bottom: -130,
            right: 15,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
