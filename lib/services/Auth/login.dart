import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/routers/routers.dart';
import 'package:pet_services_app/utilities/components/component.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username = '';
  String _password = '';
  TextEditingController namecontroller = TextEditingController(text: 'res');

  final _formKey = GlobalKey<FormState>();
  bool isHidden = true;
  void togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 130, bottom: 20, left: 30),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 2),
                      ),
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      hoverColor: Colors.black,
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                    ),
                    onChanged: (value) => setState(() => _username = value),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    obscureText: isHidden ? true : false,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 2),
                      ),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                      suffix: InkWell(
                        onTap: togglePasswordView,
                        child: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                      hoverColor: Colors.black,
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                    ),
                    onChanged: (value) => setState(() => _username = value),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        textAlign: TextAlign.right,
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      // style: ElevatedButton.styleFrom(
                      //   fixedSize: Size(100, 45), // change the button size
                      //   primary: Colors.amber[600], // change the background color
                      //   onPrimary: Colors.white,
                      // ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.amber),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromHeight(45),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
               
               
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        textAlign: TextAlign.right,
                        'Contact with',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Container(
                    // width: 600,
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          // width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                             Colors.red),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromHeight(43),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                            // style: ElevatedButton.styleFrom(
                            //   fixedSize:
                            //       Size(100, 43), // change the button size

                            //   primary:
                            //       Colors.red, // change the background color
                            //   onPrimary: Colors.white, // change the text color
                            // ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/google-removebg-preview (1).png',
                                  fit: BoxFit.cover,
                                  width: 45,
                                  height: 45,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          // width: double.infinity,
                          child: ElevatedButton(
                             style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                             Color.fromARGB(255, 1, 139, 253)),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromHeight(43),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                            // style: ElevatedButton.styleFrom(
                            //   fixedSize: Size(50, 43), // change the button size

                            //   primary:
                            //       Colors.blue, // change the background color
                            //   onPrimary: Colors.white, // change the text color
                            // ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    child: Image.asset(
                                  'assets/images/facebookpng-removebg-preview.png',
                                  fit: BoxFit.cover,
                                  width: 30,
                                  height: 30,
                                )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 31),
                //   child: Container(
                //     // width: 600,
                //     height: 50,
                //     child: Row(
                //       children: [
                //         Expanded(
                //           // width: double.infinity,
                //           child: ElevatedButton(
                //             style: ElevatedButton.styleFrom(
                //               fixedSize:
                //                   Size(100, 43), // change the button size

                //               primary:
                //                   Colors.red, // change the background color
                //               onPrimary: Colors.white, // change the text color
                //             ),
                //             onPressed: () {},
                //             child: Row(
                //               children: [
                //                 Image.asset(
                //                   'assets/images/google-removebg-preview (1).png',
                //                   fit: BoxFit.cover,
                //                   width: 45,
                //                   height: 45,
                //                 ),
                //                 SizedBox(
                //                   width: 3,
                //                 ),
                //                 Text(
                //                   'Google',
                //                   style: TextStyle(fontSize: 18),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 18,
                //         ),
                //         Expanded(
                //           // width: double.infinity,
                //           child: ElevatedButton(
                //             style: ElevatedButton.styleFrom(
                //               fixedSize: Size(50, 43), // change the button size

                //               primary:
                //                   Colors.blue, // change the background color
                //               onPrimary: Colors.white, // change the text color
                //             ),
                //             onPressed: () {},
                //             child: Row(
                //               children: [
                //                 Container(
                //                     child: Image.asset(
                //                   'assets/images/facebookpng-removebg-preview.png',
                //                   fit: BoxFit.cover,
                //                   width: 30,
                //                   height: 30,
                //                 )),
                //                 SizedBox(
                //                   width: 5,
                //                 ),
                //                 Text(
                //                   'Facebook',
                //                   style: TextStyle(fontSize: 20),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
               
                SizedBox(
                  height: 122,
                ),
                Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'You don\'t have account? ',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          CustomNavigator.push(Routes.register);
                        },
                        child: Text(
                          'Sign Up ',
                          style: TextStyle(
                            color: Colors.amber[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
