import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_services_app/config/app_states.dart';
import 'package:pet_services_app/handlers/shared_handler.dart';
import 'package:pet_services_app/routers/routers.dart';

// import '../../../routers/navigator.dart';

// class SplashBloc extends Cubit<AppStates> {

//   SplashBloc() : super(Start());

//   void checkLogin() async {
//     if (SharedHandler.instance!.getData(key: SharedKeys().isLogin, valueType: ValueType.bool)) {
//       CustomNavigator.push(Routes.home);
//     } else {
//       CustomNavigator.push(Routes.login);
//     }
//   }
// }
