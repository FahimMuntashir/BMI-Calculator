import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';




const bottomContainerHeight = 50.0;
const activeCardColour = Color(0xFF272A4D);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColor(int gender){
    if (gender == 1) {
      if (maleCardColour==inactiveCardColour) {
        maleCardColour=activeCardColour;
        femaleCardColour = inactiveCardColour;
        
      }  
      else{
        maleCardColour = inactiveCardColour;

      }
    }
    if (gender == 2) {
      if (femaleCardColour==inactiveCardColour) {
        femaleCardColour=activeCardColour;
        maleCardColour = inactiveCardColour;

      }
      else{
        femaleCardColour = inactiveCardColour;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                       updateColor(1);
                     });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: Icons.mail,
                        label: 'Hey',
                      ),
                      colour: maleCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: Icons.access_alarm,
                        label: 'Muntashir',
                      ),
                      colour: femaleCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: IconContent(
                icon: Icons.check,
                label: 'MALE',
              ),
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.close,
                    label: 'FEMALE',),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon:Icons.add,label: 'MALE',),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),

          ),
        ],

      ),
    );
  }
}



