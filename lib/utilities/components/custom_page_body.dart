import 'package:flutter/material.dart';
import 'package:pet_services_app/base/blocs/theme_bloc.dart';
import 'package:pet_services_app/utilities/theme/media.dart';

class CustomPageBody extends StatelessWidget {
  const CustomPageBody({super.key, required this.body, this.appBar});
  final Widget body;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBloc.theme.valueOrNull!.background,
      appBar: appBar,
      body: SizedBox(
        width: MediaHelper.width,
        height: MediaHelper.height,
        child: body,
      ),
    );
  }
}
