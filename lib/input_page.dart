import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(label: 'MALE',icon: FontAwesomeIcons.mars),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE')),
              ),
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
              Expanded(child: ReusableCard(colour: activeCardColour,cardChild: IconContent(label: 'MALE',icon: FontAwesomeIcons.mars),)),
              Expanded(child: ReusableCard(colour: activeCardColour,cardChild: IconContent(label: 'MALE',icon: FontAwesomeIcons.mars),)),
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