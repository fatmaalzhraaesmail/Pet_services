import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/routers/routers.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _username = '';
  String _password = '';
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isHidden = true;
  void togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    String phoneNumber;
    String countryCode;
    var _phoneNumber;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
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
                    'Sign Up',
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
                      labelText: 'USERNAME',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                      hintText: 'Enter your name',
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
                  height: 15,
                ),

                //    Row(
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: TextField(
                //         decoration: InputDecoration(
                //           labelText: 'Phone Number',
                //         ),
                //         keyboardType: TextInputType.phone,
                //         onChanged: (value) {
                //           setState(() {
                //             _phoneNumber = value;
                //           });
                //         },
                //       ),
                //     ),
                //     SizedBox(width: 16),
                //     Expanded(
                //       child: TextField(
                //         decoration: InputDecoration(
                //           labelText: 'Country Code',
                //         ),
                //         onChanged: (value) {
                //           setState(() {
                //             _countryCode = value;
                //           });
                //         },
                //       ),
                //     ),
                //   ],
                // ),

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
                      labelText: 'PHONE',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: 'Enter your phone',
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
                //  Padding(
                //    padding: const EdgeInsets.symmetric(horizontal: 30),
                //    child: Column(
                //      children: [
                //       Expanded(
                //         flex: 1,
                //         child: Text('Phone Number')),
                //        Expanded(
                //          flex: 2,
                //          child: IntlPhoneField(
                //            showCountryFlag:false,
                //            showDropdownIcon: false,

                //              // selectorConfig: SelectorConfig(showSelectorIcon: false),

                //            decoration: InputDecoration(
                //                enabledBorder: UnderlineInputBorder(
                //                        borderSide:
                //                            BorderSide(color: Colors.grey.shade300, width: 2),
                //                      ),
                //             //  labelText: 'Phone Number',
                //               labelStyle: TextStyle(
                //                        color: Colors.grey,
                //                        fontSize: 22,
                //                        fontWeight: FontWeight.w500,

                //                      ),
                //            ),

                //            initialCountryCode: _phoneNumber?.isoCode ?? 'US',
                //            onChanged: (value) {
                //              setState(() {
                //                _phoneNumber = value;
                //              });
                //            },
                //          ),
                //        ),
                //      ],
                //    ),
                //  ),
//               Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Text('Phone Number'),
//     IntlPhoneField(
//       decoration: InputDecoration(
//         hintText: '1234567890',
//       ),
//       initialCountryCode: 'US',
//       onChanged: (value) {
//         // handle phone number changes
//       },

//       // selectorConfig: SelectorConfig(
//       //   selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//       // ),
//       controller: TextEditingController(),
//     ),
//   ],
// ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        text: 'By clicking Sign up you agree to the following',
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(
                            text: ' Terms \nand Codition',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' without reservation.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
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
                      // style: ElevatedButton.styleFrom(
                      //   fixedSize: Size(100, 45), // change the button size

                      //   primary:
                      //       Colors.amber[600], // change the background color
                      //   onPrimary: Colors.white, // change the text color
                      // ),
                      onPressed: () {
                        CustomNavigator.push(Routes.verfication);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
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
                SizedBox(
                  height: 15,
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
                SizedBox(
                  height: 25,
                ),
                Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'You have account? ',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          CustomNavigator.push(Routes.login);
                        },
                        child: Text(
                          'Sign In ',
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


// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:pet_services_app/routers/navigator.dart';
// import 'package:pet_services_app/routers/routers.dart';

// class VerifyPhoneScreen extends StatefulWidget {

//   @override
//   State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
  
// }

// class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
//       TextEditingController phonecontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var _phoneNumber;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: InkWell(
//           onTap: (){
//             CustomNavigator.pop(result: VerifyPhoneScreen());
//           },
//           child: Icon(
//             Icons.arrow_back_ios_new,
//             size: 25,
//           ),
//         ),
//         elevation: 0.0,
//         title: Text(
//           'Verify Phone Number',
//           style: TextStyle(fontWeight: FontWeight.w900),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
//         child: Column(children: [
//           Text(
//             'We have sent you an SMS with a code to number \n+08 905 070 017',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 15,
//                 color: Colors.black54),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Expanded(
//             flex: 2,
//             child: IntlPhoneField(
//               controller: phonecontroller,
//               dropdownIconPosition: IconPosition.trailing,
//               decoration: InputDecoration(
//                 suffixIcon: phonecontroller.text.isEmpty
//                     ? null
//                     : IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.cancel,color: Colors.black38,),
//                       ),
//                 enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.transparent,
//                   ),
//                 ),
//                 labelStyle: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),

//               initialCountryCode: _phoneNumber?.isoCode ?? 'US',

//               onChanged: (value) {
//                 setState(() {
//                   _phoneNumber = value;
//                 });
//               },
//             ),
//           ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   fixedSize: Size(100, 47), 


//                   primary:
//                       Colors.amber[600], // change the background color
//                   onPrimary: Colors.white, // change the text color
//                 ),
//                 onPressed: () {
//                   CustomNavigator.push(Routes.phone);
//                 },
//                 child: Text(
//                   'CONFIRM',
//                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
//                 ),
//               ),
//             ),
//         ]),
//       ),
//     );
//   }
// }
