import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getUrl() {
  String myUrl = Uri.base.toString();
  String token = Uri.base.queryParameters["token"];
  String text = Uri.base.path;

  return text;
}

String getUrlCopy() {
  String myUrl = Uri.base.toString();
  String token = Uri.base.queryParameters["token"];
  String text = Uri.base.path;

  return myUrl;
}

String getUrl1() {
  String myUrl = Uri.base.toString();
  var uri = Uri.dataFromString(myUrl);
  var uuid = uri.queryParameters["token"];
  String token = uuid;
  return token;
}

String getUrl1Copy() {
  String myUrl = Uri.base.toString();
  var uri = Uri.dataFromString(myUrl);
  var uuid = uri.queryParameters["messagingSenderId"];
  String sample = uuid;
  return sample;
}
