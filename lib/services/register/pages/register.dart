import 'package:flutter/material.dart';

import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/routers/routers.dart';
import 'package:pet_services_app/utilities/components/custom_btn.dart';
import 'package:pet_services_app/utilities/components/fields/text_input_field.dart';
import 'package:pet_services_app/utilities/components/social_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 40),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextInputField(
                              label: 'USERNAME',
                              hintText: 'Enter your name',
                              controller: namecontroller,
                              errorText: 'please enter correct Name',
                              keyboardType: TextInputType.text,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextInputField(
                              label: 'EMAIL',
                              hintText: 'Enter your Email',
                              controller: namecontroller,
                              errorText: 'please enter correct Email',
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextInputField(
                              label: 'PASSWORD',
                              hintText: 'Enter your Password',
                              controller: namecontroller,
                              errorText: 'please enter correct Password',
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextInputField(
                              label: 'PHONE',
                              hintText: 'Enter your phone',
                              controller: namecontroller,
                              errorText: 'please enter correct Phone',
                              keyboardType: TextInputType.phone,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text.rich(
                                TextSpan(
                                  text:
                                      'By clicking Sign up you agree to the following',
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: CustomBtn(
                              text: 'Sign Up',

                              buttonColor: Colors.amber,
                              height: 56,
                              onTap: () => CustomNavigator.push(Routes.Navigation),
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
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                      child: SocialButton(
                                    buttonColor: Colors.red,
                                    height: 50,
                                    imagee: Image.asset(
                                      'assets/images/google-removebg-preview (1).png',
                                      fit: BoxFit.cover,
                                      width: 45,
                                      height: 45,
                                    ),
                                    text: 'Google',
                                  )),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: SocialButton(
                                    buttonColor:
                                        const Color.fromARGB(255, 2, 71, 128),
                                    height: 50,
                                    imagee: Image.asset(
                                      'assets/images/facebookpng-removebg-preview.png',
                                      fit: BoxFit.cover,
                                      width: 30,
                                      height: 30,
                                    ),
                                    text: 'Facebook',
                                  ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
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
                              GestureDetector(
                                
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
