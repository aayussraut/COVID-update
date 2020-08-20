import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:corona_update/constant.dart';
import 'package:corona_update/section/row_section1.dart';
import 'package:corona_update/section/image_section.dart';
import 'package:corona_update/section/case_update.dart';
import 'package:corona_update/covid_data.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> coronaData = {};
  String activeCaseNumber,
      closedCaseNumber,
      deathNumber,
      recoveredNumber,
      todayCaseNumber,
      criticalNumber,
      todayDeathNumber,
      todayRecoveredNUmber;
  String countryName = "Nepal";

  SearchableDropdown<String> Dropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String country in countryList) {
      var newItem = DropdownMenuItem(
        child: Text(
          country,

        ),
        value: country,
      );
      dropdownItems.add(newItem);
    }

    return SearchableDropdown<String>(
      style: TextStyle(color: Colors.white),
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      value: countryName,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          countryName = value;
          getNumber();
        });
      },
    );
  }

  Future getNumber() async {
    try {
      var decodedData = await CovidData().getCovidDeathData(countryName);
      var death = decodedData['deaths'];
      print(death);
      var activeCase = decodedData['active'];
      var recovered = decodedData['recovered'];
      var todayRecoveredCase = decodedData['todayRecovered'];
      var todayCase = decodedData['todayCases'];
      var cricitalCase = decodedData['critical'];
      var todayDeathCase = decodedData['todayDeaths'];

      setState(() {
        todayDeathNumber = todayDeathCase.toStringAsFixed(0);
        todayRecoveredNUmber = todayRecoveredCase.toStringAsFixed(0);
        todayCaseNumber = todayCase.toStringAsFixed(0);
        criticalNumber = cricitalCase.toStringAsFixed(0);
        activeCaseNumber = activeCase.toStringAsFixed(0);
        recoveredNumber = recovered.toStringAsFixed(0);
        deathNumber = death.toStringAsFixed(0);
        closedCaseNumber = (recovered + death).toStringAsFixed(0);
        print(deathNumber);
        print(closedCaseNumber);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    getNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffF2F6F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFD5A51),
        leading: Icon(
          Icons.filter_list,
          color: kRedContainerColor,
        ),
        actions: [
          Dropdown(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 30, bottom: 30),
            color: Color(0xffFD5A51),
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  countryName,
//                  '2020-08-17T10:27:32.000Z',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kRedContainerColor,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Corona Virus Cases",
                  style: TextStyle(fontSize: 25.0, color: kRedContainerColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Symptoms',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  ImagePart(
                    imageName: 'Cough',
                  ),
                  ImagePart(
                    imageName: 'Headache',
                  ),
                  ImagePart(
                    imageName: 'Fever',
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                RowSection(
                  count: deathNumber,
                  title: 'Deaths',
                  color: Colors.red,
                ),
                SizedBox(width: 20.0),
                RowSection(
                  count: recoveredNumber,
                  title: 'Recovered',
                  color: Colors.green,
                ),
              ],
            ),
          ),
          CaseUpdate(
            name: 'Active Cases',
            number: activeCaseNumber,
            name2: 'Today Cases',
            name3: 'Today Death',
            number2: todayCaseNumber,
            number3: todayDeathNumber,
          ),
          CaseUpdate(
            name: 'Closed Cases',
            number: closedCaseNumber,
            name2: 'Today Recovered',
            name3: 'Critical',
            number3: criticalNumber,
            number2: todayRecoveredNUmber,
          ),
        ],
      ),
    );
  }
}
