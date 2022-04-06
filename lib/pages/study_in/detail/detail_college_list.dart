import 'package:flutter/material.dart';
import 'package:goldmine/widgets/texts/big_text.dart';
import 'package:goldmine/widgets/texts/small_text.dart';

class DetailCollegeList extends StatelessWidget {
  const DetailCollegeList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                      children: [
                        ListView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            child: GestureDetector(
                               onTap: () {
                        
                      },
                              child: Row(
                                children: 
                                  [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.shiksha.com/mediadata/images/1515481785phpZsgL9D.png",
                          ),
                          ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text:"Holland",color: Colors.black,),
                              SizedBox(height: 5,),
                              SmallText(text: "Good one",color: Colors.black26,),
                              SizedBox(height: 10,),
                              Row(
                    children: [
                      Wrap(
                        children: 
                          List.generate(5, (index) => Icon(Icons.star_border_outlined,color: Colors.pink,size: 15,),),
                      ),
                       SizedBox(width: 10,),
                       SmallText(text: "4.5",color: Colors.black38,),
                       SizedBox(width: 20,),
                       SmallText(text: "1287",color: Colors.black38,),
                       SizedBox(width: 5,),
                       SmallText(text: "comments",color: Colors.black38,),
                    ],
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                                ],
                              ),
                            ),
                          );
                      }),
                      ],
                    );
  }
}