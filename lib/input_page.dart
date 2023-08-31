import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1e1f31);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: activeCardColour,)),
              Expanded(child: ReuseableCard(colour: activeCardColour,)),
            ],
          )),
          Expanded(child: Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: activeCardColour,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: activeCardColour,)),
              Expanded(child: ReuseableCard(colour: activeCardColour,)),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {

  ReuseableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}