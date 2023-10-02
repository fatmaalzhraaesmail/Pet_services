import 'package:flutter/material.dart';
import 'package:pet_services_app/services/home/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_services_app/services/home/model/deal_of_the_day.dart';
import 'package:pet_services_app/services/home/model/hot_shop.dart';
import 'package:pet_services_app/services/home/model/services.dart';
import 'package:pet_services_app/services/home/model/top_services.dart';
import 'package:pet_services_app/services/myaccount/pages/account.dart';
import 'package:pet_services_app/services/home/pages/home_page.dart';
import 'package:pet_services_app/services/home/pages/location.dart';
import 'package:pet_services_app/services/reservation_calender/pages/reservation.dart';
import 'package:pet_services_app/services/tips/pages/tips.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [
   HomePage(),
   TipsScreen(),
   ReservationScreen(),
   LocationScreen(),
   AccountScreen()
   
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

    final List services=Services.CreateServicesCard();
    final List topservices=TopServices.TopServicesCard();
    final List hotshop=HotShop.CreateTopShopCard();
    final List deal_of_the_day=DealOfTheDay.CreatedealofdayCard();

}
