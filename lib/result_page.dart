import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.BMIvalue, this.results, this.resultSentence);
  final String BMIvalue;
  final String results;
  final String resultSentence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          results,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF24D876),
                          ),
                        ),
                        Text(
                          BMIvalue,
                          style: TextStyle(
                              fontSize: 100.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          resultSentence,
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        )
                      ]),
                  width: double.infinity,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF111328),
                  ),
                )),
            Expanded(
              child: SafeArea(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return InputPage();
                    }));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'RECALCULATE',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    )),
                    color: Color(containerColour),
                    width: double.infinity,
                    height: containerHeight,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
