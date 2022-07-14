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

  String authToken =
      'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.MRqf6Wt-Jpa9dZ8trvI2Oatb8u-D99mTi9DpQZh5oSbNdvuSZNPBuLswKyWR2fVFwiGBuUrWzDAy9x-19fTXOwOFguzLeTV1.qwnmpzM0VGpNfXBnjZMHRg.jAPsflQuhhNUOZcQUVempHo90I6vm1NIDcr8aCySOlgDy72QGC-J7xUYQUlw6yIks8NRZHAEgc17GIDakpdKlLH9B0fCNvSxk2UNG9GrDilRoR-2lmshXwHA0s8rQEAL8HdchbmDsb2JLodtlXC7Xg.Vx5k5rhkjezyehpcX4SQg5jlF-F57maz9fts1yk93lw';

  dynamic userInfo;

  String pageurl = '';

  dynamic dashboard;

  int count = 1;

  int count1 = 0;
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
