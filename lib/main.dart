import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isRememberMeChecked =
      false; // Track the state of the "Remember Me" checkbox

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign in",
                  style: TextStyle(
                      fontFamily: "Parkinsans",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true, // Enable the background filling
                      fillColor: Colors.transparent, // Transparent background
                      hintText: "Enter your email",
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Parkinsans",
                      ),
                      hintStyle: TextStyle(
                        color: Color.fromARGB(133, 255, 255, 255),
                        fontFamily: "Parkinsans",
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when not focused
                          width: 2.0, // Border width
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when focused
                          width: 2.0, // Border width
                        ),
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Input text color
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true, // Enable the background filling
                      fillColor: Colors.transparent, // Transparent background
                      hintText: "Enter your Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Parkinsans",
                      ),
                      hintStyle: TextStyle(
                        fontFamily: "Parkinsans",
                        color: Color.fromARGB(133, 255, 255, 255),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when not focused
                          width: 2.0, // Border width
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white, // Border color when focused
                          width: 2.0, // Border width
                        ),
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Input text color
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: "Parkinsans",
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Checkbox(
                        value: _isRememberMeChecked, // Checkbox state
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isRememberMeChecked = newValue ?? false;
                          });
                        },

                        activeColor: Colors.white,
                        checkColor: Colors.deepPurple,
                      ),
                    ),
                    // const SizedBox(
                    //     width: 2), // Padding on the left side for alignment
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Parkinsans",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Pushes the checkbox to the right
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: "Parkinsans",
                          color: Colors.deepPurpleAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "-OR-",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "- Sign in With -",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Icon(
                          Icons.facebook,
                          size: 25,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Icon(
                          Icons.g_mobiledata,
                          size: 30,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  "Don\'t have an account?    Sign Up",
                  style: TextStyle(
                    fontFamily: "Parkinsans",
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
