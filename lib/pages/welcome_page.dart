import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_place_smart_ui/cubit/app_cubit.dart';
import 'package:tourist_place_smart_ui/misc/colors.dart';
import 'package:tourist_place_smart_ui/widgets/app_large_text.dart';
import 'package:tourist_place_smart_ui/widgets/app_text.dart';
import 'package:tourist_place_smart_ui/widgets/ressponsive_button.dart';


class WelComePage extends StatelessWidget {

  List images =[
    "welcome_page1.jpg",
    "welcome_page2.jpg",
    "welcome_page3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ),
                    fit: BoxFit.cover
              )
            ),
            child:Container(
              margin: EdgeInsets.only(top: 150, right: 20,left: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(text: "Mountain",size: 30,),
                      SizedBox(height: 20,),
                      Container(
                          width: 250,
                          child:AppText(
                              text: "limon halder limon halder limon halder limon halder limon halder limon hader limon halder limon hslder limon halder limon halder lim",
                              color: AppColors.textColor2,
                            size: 14,

                          )

                      ),
                      SizedBox(height: 40,),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<Appcubits>(context).getData();
                        },
                        child: Container(
                          width: 200,
                          child: Row(
                            children:[ ResponsiveButton(
                              width:120,
                            ),]
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  Column(

                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 2),
                        width: 8,
                        height:index==indexDots? 25:5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?AppColors.mainColor:Colors.black,
                        ),
                      );
                    }),
                  )
                  
                ],
              ),
            )
          );
      }),
    );
  }
}
