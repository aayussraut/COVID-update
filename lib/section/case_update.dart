import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:corona_update/constant.dart';

class CaseUpdate extends StatelessWidget {

  CaseUpdate({this.name,this.number,this.name2,this.number2,this.name3,this.number3});
  final String name;
  final String number;
  final String name2;
  final String number2;
  final String name3;
  final String number3;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
        child: Container(
          decoration: kContainerBoxDecoration,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,
                      style: TextStyle(
                        color: kSmallTextColor,
                        fontSize: 15,fontWeight: FontWeight.w700,
                      ),),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(number,
                      style: TextStyle(
                        fontSize: 25,

                      ),)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(number2,style: TextStyle(fontSize: 20),),
                    Text(name2,style: TextStyle(
                      color: kSmallTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,),

                    SizedBox(
                      height: 10,
                    ),
                    Text(number3,style: TextStyle(fontSize: 20),),
                    Text(name3,style: TextStyle(
                      color: kSmallTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


