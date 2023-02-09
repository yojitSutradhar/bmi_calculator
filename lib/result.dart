import 'package:flutter/material.dart';
import 'package:un/constants.dart';
import 'reusable_Card.dart';
import 'Inputpage.dart';
class result extends StatelessWidget {
  final String bmiresult;
  final String resultText;
  result(this.bmiresult,this.resultText) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          primaryColor: Color(0xFF0A0E21)),
      home: Scaffold(
          appBar: AppBar(
            title: Text("BMI CALCULATOR"),
            centerTitle: true,
            backgroundColor: Color(0xFF0A0E21),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                child: Text(
                  "Your Result",
                  style: ktextstyle,
                ),
              )),
              Expanded(
                  flex: 5,
                  child: reuseablecard(
                      activecolor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            resultText,
                            style: kresultstyle,
                          ),
                          Text(
                            bmiresult,
                            style: kTresultstyle,
                          ),
                          Text(
                            "Your BMI result is quite low,you sholud eat more: ",
                            style: kbodyresultstyle,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      null)),
              re_G("RE-CALCULATE",(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              }),
            ],
          )),
    );
  }
}
