import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_services_app/config/app_states.dart';
import 'package:pet_services_app/services/home/bloc/cubit.dart';
import 'package:pet_services_app/services/tips/bloc/cubit.dart';
import 'package:pet_services_app/services/tips/bloc/state.dart';
import 'package:pet_services_app/services/tips/model/recommended_tips.dart';
import 'package:pet_services_app/services/tips/widget/popular_tips_widget.dart';
import 'package:pet_services_app/services/tips/widget/recommended_tips.dart';
import 'package:pet_services_app/utilities/components/search.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey, Colors.black12],
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/onboarding7.jpeg',
                          )),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                  ),
                ),
                Search(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text(
                'Let the dogs get better \nevery day.',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),

            BlocProvider(
                create: (BuildContext context) => TipsCubit(),
                child: BlocConsumer<TipsCubit, TipsStates>(
                    listener: (BuildContext context, TipsStates state) {},
                    builder: (BuildContext context, TipsStates state) {
                      TipsCubit cubit = TipsCubit.get(context);
                      return Container(
                        // width: 60,
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: cubit.recommededTipss.length,
                            itemBuilder: (context, index) =>
                                RecommendedTipsWidget(
                                    context, cubit.recommededTipss[index])),
                      );
                    })),

            //////

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 8),
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [ Colors.black38,Colors.black54,Colors.black87,],
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/dogs.jpg',
                            )),
                        borderRadius:
                            BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 245,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      height: 56,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cat and Dog',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                        Text('20 Take Care Tips',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),)
                      ],
                                      ),
                    ))
                ],

              ),
            ),

               BlocProvider(
              create: (BuildContext context) => TipsCubit(),
              child: BlocConsumer<TipsCubit, TipsStates>(
                  listener: (BuildContext context, TipsStates state) {},
                  builder: (BuildContext context, TipsStates state) {
                    TipsCubit cubit = TipsCubit.get(context);
                    return Container(
                        height: 430,
                        child: GridView.builder(
                          padding: EdgeInsets.symmetric(vertical: 13),
                          itemCount: cubit.popularTipss.length,
                          
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2/1.9,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  mainAxisSpacing: 15.0),
                          itemBuilder: (BuildContext context, int index) {
                            return PopularTipsWidget(
                                context, cubit.popularTipss[index]);
                          },
                        ));
                  }),
            ),

         
          ],
        ),
      ),
    );
  }
}
