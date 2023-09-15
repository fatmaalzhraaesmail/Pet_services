import 'package:flutter/material.dart';
import 'package:pet_services_app/services/tips/model/popular_tips.dart';
import 'package:pet_services_app/services/tips/model/recommended_tips.dart';

Widget PopularTipsWidget(
    BuildContext context, PopularTips popularTips) {
  return Padding(
    padding: EdgeInsets.only(left: 20, top: 8, bottom: 8,right: 20),
    child: Container(
      // height: 240,
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 1.4,
                  offset: Offset(0, 2),
                ),
              ],
              image: DecorationImage(
                
                  image: AssetImage('${popularTips.image}'), fit: BoxFit.cover),
              backgroundBlendMode: BlendMode.dstATop,
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white38, Colors.white54],
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Positioned(
                      top: 15,
                
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.white60,
                              child: Center(
                                child: IconButton(
                                   
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 24,
                                      weight: 5,
                                    )),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('${popularTips.title}',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),overflow: TextOverflow.ellipsis,maxLines: 1,),
                   Text('${popularTips.descriptionPopTips}',style: TextStyle(fontSize: 16,color: Colors.grey.shade600),overflow: TextOverflow.visible,maxLines: 1,)
                ],),
              )
            ],
          ),


        

        ],
      ),
    ),
  );
}