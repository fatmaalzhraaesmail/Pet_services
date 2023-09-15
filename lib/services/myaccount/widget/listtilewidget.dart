import 'package:flutter/material.dart';

class ProfileOtherServices extends StatelessWidget {
  const ProfileOtherServices(
      {super.key,
      this.ontap,
      required this.leading,
      required this.trailing,
      required this.title});
  final Function()? ontap;
  final Widget leading;
  final Widget trailing;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: leading,
          title: Text(title),
          trailing: trailing,
          horizontalTitleGap: 3,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 18,
          ),
          // dense: true,
        ),
        Divider(
          height: 1,
          thickness: 1,
          indent: 20,
          endIndent: 0,
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}
