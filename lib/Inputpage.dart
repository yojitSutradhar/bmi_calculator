import 'package:flutter/material.dart';
import 'result.dart';
import 'reusable_Card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'bmi_function.dart';

enum gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  var Select;
  int height = 180;
  int weight = 25;
  int age = 25;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: reuseablecard(
                    Select == gender.male ? activecolor : inactivecolor,
                    iconcontent(Icons.male, "Male"), () {
                  setState(() {
                    Select = gender.male;
                  });
                }),
              ),
              Expanded(
                child: reuseablecard(
                    Select == gender.female ? activecolor : inactivecolor,
                    iconcontent(Icons.female, "Female"), () {
                  setState(() {
                    Select = gender.female;
                  });
                }),
              )
            ],
          )),
          Expanded(
              child: reuseablecard(
                  activecolor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kTextlable,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kTextstyle,
                          ),
                          Text(
                            'cm',
                            style: kTextlable,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          overlayColor: Color(0x29EB1555),
                          thumbColor: Colors.pink,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.toInt();
                              });
                            }),
                      ),
                    ],
                  ),
                  null)),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: reuseablecard(
                    activecolor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kTextlable),
                        Text(weight.toString(), style: kTextstyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              pluss(Icon(Icons.add), () {
                                setState(() {
                                  weight++;
                                });
                              }),
                              SizedBox(width: 7.0),
                              pluss(Icon(Icons.maximize), () {
                                setState(() {
                                  weight--;
                                });
                              }),
                            ])
                      ],
                    ),
                    null),
              ),
              Expanded(
                child: reuseablecard(
                    activecolor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kTextlable),
                        Text(age.toString(), style: kTextstyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              pluss(Icon(Icons.add), () {
                                setState(() {
                                  age++;
                                });
                              }),
                              SizedBox(width: 7.0),
                              pluss(Icon(Icons.maximize), () {
                                setState(() {
                                  age--;
                                });
                              }),
                            ])
                      ],
                    ),
                    null),
              )
            ],
          )),
          re_G("CALCULATE", () {
            Calculator clc = Calculator(height: height, weight: weight);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        result(clc.calculate(),clc.getResult())));
          })
        ],
      ),
    );
  }
}
