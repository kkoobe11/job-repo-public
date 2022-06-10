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

String getUrl1() {
  String pageUrl = Uri.base.path;
  var uri = Uri.dataFromString(pageUrl);
  var uuid = uri.queryParameters["token"];
  String token = uuid;
  return token;
}
