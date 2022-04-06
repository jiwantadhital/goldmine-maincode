import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldmine/controllers/services_controller.dart';
import 'package:goldmine/utils/app_constants.dart';
import 'package:goldmine/widgets/texts/big_text.dart';
import 'package:goldmine/widgets/texts/small_text.dart';

class OurServices extends StatelessWidget {
  const OurServices({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
             Row(
                  children: 
                    const [
                       Expanded(
                         child: Divider(
                                         color: Colors.black,
                                       ),
                       ),
                       SizedBox(width: 5,),
                      Text("OUR SERVICES",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                      Expanded(
                         child: Divider(
                                         color: Colors.black,
                                       ),
                       ),
                  ],
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                      width: double.maxFinite,
                  child: GetBuilder<ServiceController>(builder: (service){
                    return service.isLoaded?ListView.builder(
                    itemCount: service.serviceList.length,
                    itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(9, 7),
                            spreadRadius: -8,
                          ),
                        ]
                      ),
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 1,right: 1),
                            decoration: BoxDecoration(
                            color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 3,),
                                BigText(text: service.serviceList[index].title.toString(),color: Colors.black),
                                SizedBox(height: 10,),
                                SmallText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",color: Colors.black,)
                              ],
                            ),
                            height: 180,
                            width: 220,
                          ),
                          Container(
                            height: 180,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
                              color: Colors.white,
                              image: DecorationImage(image: NetworkImage(
                               AppConstants.MAIN_URL+service.serviceList[index].image.toString()
                              ),fit: BoxFit.cover),
                            ),
                            

                          ),
                        ],
                      ),
                    );
                  }):CircularProgressIndicator();
                  },)
                ),
              )
          ],
        ),
      ),
    );
  }
}