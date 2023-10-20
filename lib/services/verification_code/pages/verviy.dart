import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/routers/routers.dart';

class VerifyPhoneScreen extends StatefulWidget {

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
  
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
      TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var phoneNumber;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            CustomNavigator.pop(result: VerifyPhoneScreen());
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 25,
          ),
        ),
        elevation: 0.0,
        title: Text(
          'Verify Phone Number',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(children: [
          Text(
            'We have sent you an SMS with a code to number \n+08 905 070 017',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black54),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 2,
            child: IntlPhoneField(
              controller: phonecontroller,
              dropdownIconPosition: IconPosition.trailing,
              decoration: InputDecoration(
                suffixIcon: phonecontroller.text.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.cancel,color: Colors.black38,),
                      ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),

              initialCountryCode: phoneNumber?.isoCode ?? 'US',

              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
          ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 47), 


                  primary:
                      Colors.amber[600], // change the background color
                  onPrimary: Colors.white, // change the text color
                ),
                onPressed: () {
                  CustomNavigator.push(Routes.phone);
                },
                child: Text(
                  'CONFIRM',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
