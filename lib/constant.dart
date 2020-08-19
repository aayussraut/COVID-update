import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color kRedContainerColor = Colors.white;

const List<String> countryList = [
  'India',
  'Indonesia',
  'Pakistan',
  'Bangladesh',
  'Japan',
  'Philippines',
  'Vietnam',
  'Turkey',
  'Iran',
  'Thailand',
  'Myanmar',
  'South Korea',
  'Iraq',
  'Afghanistan',
  'Saudi Arabia',
  'Uzbekistan',
  'Malaysia',
  'Yemen',
  'Nepal',
  'North Korea',
  'Sri Lanka',
  'Kazakhstan',
  'Syria',
  'Cambodia',
  'Jordan	Azerbaijan',
  'United Arab Emirates',
  'Tajikistan',
  'Israel',
  'Laos',
  'Lebanon',
  'Kyrgyzstan',
  'Turkmenistan',
  'Singapore',
  'Oman',
  'State of Palestine',
  'Kuwait',
  'Georgia',
  'Mongolia',
  'Armenia',
  'Qatar',
  'Bahrain',
  'Timor-Leste',
  'Cyprus',
  'Bhutan',
  'Maldives',
  'Brunei',
  'China'
];

Color kSmallTextColor = Color(0xffDFDFDF);

BoxDecoration kContainerBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.0),
//  borderRadius: Radius.circular(8.0),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      blurRadius: 2.0,
      spreadRadius: 0.0,
      offset: Offset(2.0, 2.0), // shadow direction: bottom right
    )
  ],
);
