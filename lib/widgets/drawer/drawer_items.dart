import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldmine/routes/route_helper.dart';
import 'drawer_list.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
              padding: EdgeInsets.zero,
              children: [
                 DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 10,
                        spreadRadius: 7,
                      )
                    ]
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(width: 1,color: Colors.white,),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7,
                          offset: Offset(1,1)
                        )
                      ],
                      image:DecorationImage(image: AssetImage(
                        "assets/images/icon.png"
                      ),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
               DrawerList(icon: Icons.all_inbox_outlined,iconColor: Colors.red, text: "About Us",tap: (){Get.toNamed(RouteHelper.getAboutUs());},),
                DrawerList(icon: Icons.favorite,text: "Our Service",iconColor: Colors.red,tap: (){Get.toNamed(RouteHelper.getOurServices());},),
               DrawerList(icon: Icons.system_security_update_good, text: "Terms and Condition",iconColor: Colors.red,tap: (){Get.toNamed(RouteHelper.getTermsPage());},),
              ],
            );
  }
}