import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'calculator.dart';

const containerHeight = 80.0;
const backgroundColour = Color(0xFF1D1E33);
const containerColour = 0xFFEb1555;
const inactiveCardColour = 0xFF111328;
int height = 180;
int weight = 60;
int age = 20;

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

Color manColour = Color(inactiveCardColour);
Color womenColour = Color(inactiveCardColour);

void updateColour(GenderType gender) {
  if (gender == GenderType.male) {
    if (manColour == Color(inactiveCardColour)) {
      manColour = backgroundColour;
      womenColour = Color(inactiveCardColour);
    } else {
      manColour = Color(inactiveCardColour);
    }
  }
  if (gender == GenderType.female) {
    if (womenColour == Color(inactiveCardColour)) {
      womenColour = backgroundColour;
      manColour = Color(inactiveCardColour);
    } else {
      womenColour = backgroundColour;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(GenderType.male);
                  });
                },
                child: ReusableCard(
                    manColour, genderSign('MALE', FontAwesomeIcons.mars)),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(GenderType.female);
                  });
                },
                child: ReusableCard(
                    womenColour, genderSign('FEMALE', FontAwesomeIcons.venus)),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      backgroundColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: const TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xFF8D8E98),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
                      )))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      backgroundColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5E),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56.0,
                                    width: 56.0,
                                  )),
                              SizedBox(
                                width: 10.0,
                              ),
                              RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5E),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56.0,
                                    width: 56.0,
                                  ))
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: ReusableCard(
                      backgroundColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5E),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56.0,
                                    width: 56.0,
                                  )),
                              SizedBox(
                                width: 10.0,
                              ),
                              RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5E),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56.0,
                                    width: 56.0,
                                  ))
                            ],
                          )
                        ],
                      )))
            ],
          ),
          SafeArea(
            child: GestureDetector(
              onTap: () {
                Calculator calc = new Calculator(weight, height);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultPage(calc.calculateBMI(), calc.getresult(),
                      calc.getResultSentence());
                }));
              },
              child: Container(
                child: Center(
                    child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )),
                color: Color(containerColour),
                width: double.infinity,
                height: containerHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
