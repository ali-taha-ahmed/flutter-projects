import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'our_widgets.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bottomCardColor = Color(0xffEB1555);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      ourChild: GenderCard(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      ourChild: GenderCard(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 16.0),
            color: bottomCardColor,
          ),
        ],
      ),
    );
  }
}
