import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_place_smart_ui/misc/colors.dart';
import 'package:tourist_place_smart_ui/widgets/app_button.dart';
import 'package:tourist_place_smart_ui/widgets/app_large_text.dart';
import 'package:tourist_place_smart_ui/widgets/ressponsive_button.dart';

import '../widgets/app_text.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar =4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage(
                            "img/mountain2.jpg"
                        ),
                        fit: BoxFit.cover),

                  ),
                )),
            Positioned(
                top: 50,
                left: 30,

                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                  ],
                )
            ),
            Positioned(
                top: 330,
                left: 0,
                child: Container(
                    padding: EdgeInsets.only(top: 20,right: 15,left: 18),
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            AppLargeText(text: "Hemlaoya"),
                            AppText(text: "tk250",size: 25,)
                          ],
                        ),
                        SizedBox(height:13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(text: " san Franciso"),
                            Icon(Icons.edit_location),
                            SizedBox(width: 7,),

                          ],
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index){
                                  return  Icon(Icons.star, color: index<gottenStar?AppColors.starcolor: Colors.grey,);
                                },
                                )),
                            SizedBox(width: 5,),
                            AppText(text: "4.0"),
                          ],
                        ),
                        SizedBox(height: 30,),
                        AppLargeText(text: "People", size: 24,),
                        SizedBox(height: 8,),
                        AppText(text: " you got foue sytar"),
                        SizedBox(height: 15,),
                        Wrap(
                            children: List.generate(5, (index) {
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedIndex=index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: AppButtons(
                                      isIcon: false,
                                      text:(index+1).toString(),
                                      size: 60,
                                      color:selectedIndex==index?Colors.white:Colors.black ,
                                      backgroundcolor: selectedIndex==index?Colors.black:AppColors.buttomBackground,
                                      borderColor: selectedIndex==index?Colors.black:AppColors.buttomBackground),
                                ),
                              );
                            }),
                          ),
                        SizedBox(height: 25,),
                        AppLargeText(text: "Description",color: Colors.black.withOpacity(0.8), size: 24,),
                        SizedBox(height: 12,),
                        AppText(text: "fg tff ycd hvf gf hbvff   uh niugf jbfft hffc n ygf6yhj n yfc ufdfc tfy n tyfrdy yg7v   yf7f b 6f7y yf7yhc"),
                      ],

                    ))),
            Positioned(
              bottom: 17,
                left: 20,
                right: 20,
                child: Row(

                  children: [
                   AppButtons(isIcon: true,icon:Icons.favorite_border,size: 60, color: AppColors.textColor1, backgroundcolor: AppColors.buttomBackground, borderColor: AppColors.buttomBackground),
                    SizedBox(width: 30,),
                    ResponsiveButton(
                      isResponsive: true,


                    )
            ],))
          ],
        ),
      ),
    );
  }
}