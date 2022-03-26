import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_place_smart_ui/misc/colors.dart';
import 'package:tourist_place_smart_ui/widgets/app_large_text.dart';
import 'package:tourist_place_smart_ui/widgets/app_text.dart';

class HomePage extends StatefulWidget  {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  
  Map images ={
    "mountain1.jpg":"Thriling",
    "mountain2.jpg":"enjoying",
    "mountain3.jpg":"Happy",
    "welcome_page1.jpg":"hello"
    
  };
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(

      body:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20,right: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Icon(Icons.menu, size:30, color:Colors.black54),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(.5)
                    ),
                  ),



                ],
              ),
            ),
            SizedBox(height: 40,),

            Container(
              margin: EdgeInsets.only(left: 20),
              child:AppLargeText(text: "Discover"),
            ),
            SizedBox(height: 20,),
            Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey ,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 20,right: 20),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: CircleTAbIndicator(color: AppColors.mainColor, radius: 2) ,
                    tabs: [
                      Tab(text:"Places", ),
                      Tab(text:"Inspiration"),
                      Tab(text:"Emotions",),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 13,),
            Container(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      itemCount: 3,
                     scrollDirection: Axis.horizontal,
                     itemBuilder:( BuildContext context,int index ){
                        return Container(
                          margin: EdgeInsets.only(top: 10, left: 20,right: 15),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color:Colors.white,
                            image: DecorationImage(
                              image: AssetImage("img/mountain3.jpg"),
                              fit: BoxFit.cover
                            ),

                          ),
                        );
                    }
                  ),

                Text("by"),
                Text("here"),

              ],

              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Explore more", size: 24, ),
                  AppText(text: "see more", color: Colors.grey,)
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 120,
              width: double.maxFinite,
              child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 20),
                      itemBuilder: (_,index){
                        return Column(
                          children: [
                            Container(
                                width: 90,
                                height: 80,
                                margin: EdgeInsets.only(right: 15,left: 15),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                            //color:Colors.white,
                            image: DecorationImage(
                            image: AssetImage("img/"+ images.keys.elementAt(index)),
                            fit: BoxFit.cover
                            ),
                            ),),
                            AppText(text: images.values.elementAt(index),),
                          ],
                        );
                      }
                  ),
            )
    ],
    ),);
  }
}

class CircleTAbIndicator extends Decoration{
  final Color color;
  double radius;

  CircleTAbIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color, radius:radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint =Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset= Offset(configuration.size!.width/2-radius/2, configuration.size!.height);

    canvas.drawCircle(offset+ circleOffset, radius, _paint);
  }

}
