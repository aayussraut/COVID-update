import 'dart:convert';

import 'package:http/http.dart';

class CovidData {
  String activeCaseNumber, closedCaseNumber, deathNumber, recoveredNumber;
  var decodedData;

  Future getCovidDeathData(String selectedCountry) async {
    print(selectedCountry);
    Response response = await get(
        'https://disease.sh/v3/covid-19/countries/$selectedCountry?strict=true');
    String data = response.body;
    if (response.statusCode == 200) {
      decodedData = jsonDecode(data);
    } else if (response.statusCode == 400) {
      print(response.statusCode);
    }
    return decodedData;
  }
}
