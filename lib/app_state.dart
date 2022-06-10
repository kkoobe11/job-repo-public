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

  String Authorization =
      'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.PTY7TWfx2OCOU8wlp-5j7jNb1P25hYcGZP-7PEd2m6uTHCcAoYyX1FJUgpF6WY4-1VJdAlXxGCRB4CoXvadPGn0H2hArrYNH.OgX31smMIZYrLQE068IdcA.23wKnwzgIAROlxe1v8AHiQ3F2WrtcuF2q3roNMnQT8JB8qxm7UqPALWeOsX_4jhFhz3kgWWZTNkCTWdMZWBp6NmS6JGtsWYIGYex6xX5FyhY6qI3NjgyKUMH_anVb01aO8RiHSWXhnqGDjSz_7n26A.v-acfLeEBQMJQkAnAe3csWZSCx0_WOQbdal2cidVvyA';

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
