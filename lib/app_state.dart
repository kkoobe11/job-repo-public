import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  String user = '';

  dynamic records;

  String Authorization = '';

  bool visibility = false;

  String status = '';

  int curPage = 0;

  int nextPage = 0;

  int prevPage = 0;

  String StatusHired = 'Hired';

  String statusRejected = 'Rejected';

  String statusPending = 'New';

  String statusInterviewed = 'Interviewed';

  String authToken = '';

  dynamic userInfo;

  String pageurl = '';

  dynamic dashboard;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
