import 'dart:convert';

import 'package:http/http.dart';


class CovidData {
  String activeCaseNumber, closedCaseNumber, deathNumber, recoveredNumber;
  var decodedData;
  Future getCovidDeathData(String selectedCountry) async {
    print(selectedCountry);
//    Map<String,String> coronaData = {};
//    'activeCaseNumber':'',
//    'closedCaseNumber':'',
//    'deathNumber':'',
//    'recoveredNumber':''
    Response response = await get(
        'https://disease.sh/v3/covid-19/countries/$selectedCountry?strict=true');
    String data = response.body;
    if (response.statusCode == 200) {
       decodedData= jsonDecode(data);

//      var death = decodedData['deaths'];
//      var activeCase = decodedData['active'];
//      var recovered = decodedData['todayRecovered'];
//      var closedCase = decodedData['recovered'];
//      coronaData.update(deathNumber, (value) => death.toString());
//      coronaData.update(activeCaseNumber, (value) => activeCase.toString());
//      coronaData.update(recoveredNumber, (value) => recovered.toString());
//      coronaData.update(closedCaseNumber, (value) => closedCase.toString());
//      coronaData[activeCaseNumber] = activeCase.toString();
//      coronaData[recoveredNumber] = recovered.toString();
//      coronaData[closedCaseNumber] =closedCase.toString();
//      coronaData[deathNumber] =death.toString();
    } else if (response.statusCode == 400) {
      print(response.statusCode);
    }
    return decodedData;
  }

//  Future getCovidActiveCaseData(String selectedCountry) async {
//    print(selectedCountry);
//    //Map<String,String> cryptoValue = {};
//    Response response = await get(
//        'https://disease.sh/v3/covid-19/countries/$selectedCountry?strict=true');
//    String data = response.body;
//    if (response.statusCode == 200) {
//      var decodedData = jsonDecode(data);
//      var activeCase = decodedData['active'];
//      activeCaseNumber = activeCase.toString();
//    } else if (response.statusCode == 400) {
//      print(response.statusCode);
//    }
//
//    return activeCaseNumber;
//  }
//
//  Future getCovidRecoveredCaseData(String selectedCountry) async {
//    print(selectedCountry);
//    //Map<String,String> cryptoValue = {};
//    Response response = await get(
//        'https://disease.sh/v3/covid-19/countries/$selectedCountry?strict=true');
//    String data = response.body;
//    if (response.statusCode == 200) {
//      var decodedData = jsonDecode(data);
//      var recovered = decodedData['todayRecovered'];
//      recoveredNumber = recovered.toString();
//    } else if (response.statusCode == 400) {
//      print(response.statusCode);
//    }
//
//    return recoveredNumber;
//  }
//
//
//  Future getCovidClosedCaseData(String selectedCountry) async {
//    print(selectedCountry);
//    //Map<String,String> cryptoValue = {};
//    Response response = await get(
//        'https://disease.sh/v3/covid-19/countries/$selectedCountry?strict=true');
//    String data = response.body;
//    if (response.statusCode == 200) {
//      var decodedData = jsonDecode(data);
//      var closedCase = decodedData['recovered'];
//      closedCaseNumber = closedCase.toString();
//    } else if (response.statusCode == 400) {
//      print(response.statusCode);
//    }
//
//    return closedCaseNumber;
//  }
}


