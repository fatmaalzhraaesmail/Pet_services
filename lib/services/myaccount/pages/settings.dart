import 'package:flutter/material.dart';
import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/services/myaccount/widget/listtilewidget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 21),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              CustomNavigator.pop();
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          ProfileOtherServices(
            leading: Icon(Icons.security_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            title: 'Security',
          ),
          ProfileOtherServices(
            leading: Icon(Icons.notifications_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            title: 'Notification',
          ),
          ProfileOtherServices(
            leading: Icon(Icons.translate_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            // trailing: Icon(Icons.fmd_good),
            title: 'Langauge',
          ),
          ProfileOtherServices(
            leading: Icon(Icons.contact_mail),
            trailing: Icon(Icons.arrow_forward_ios),
            title: 'Connect',
          ),
        ],
      )),
    );
  }
}
