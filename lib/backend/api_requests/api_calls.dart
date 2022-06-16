import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class ApplicantsCall {
  static Future<ApiCallResponse> call({
    String name = '',
    String position = '',
    String dept = '',
    String cv = '',
    String status = '',
    String comment = '',
    String authToken =
        'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.PTY7TWfx2OCOU8wlp-5j7jNb1P25hYcGZP-7PEd2m6uTHCcAoYyX1FJUgpF6WY4-1VJdAlXxGCRB4CoXvadPGn0H2hArrYNH.OgX31smMIZYrLQE068IdcA.23wKnwzgIAROlxe1v8AHiQ3F2WrtcuF2q3roNMnQT8JB8qxm7UqPALWeOsX_4jhFhz3kgWWZTNkCTWdMZWBp6NmS6JGtsWYIGYex6xX5FyhY6qI3NjgyKUMH_anVb01aO8RiHSWXhnqGDjSz_7n26A.v-acfLeEBQMJQkAnAe3csWZSCx0_WOQbdal2cidVvyA',
  }) {
    final body = '''
{
  "name": "${name}",
  "position": "${position}",
  "dept": "${dept}",
  "status": "${status}",
  "note": "${comment}",
  "upload": "${cv}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Applicants',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/applicants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Name': name,
        'Position': position,
        'dept': dept,
        'CV': cv,
        'Status': status,
        'Comment': comment,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ApplicantQueryCall {
  static Future<ApiCallResponse> call({
    String sortby = 'id',
    String orderby = 'asc',
    int page = 1,
    int perPage = 12,
  }) {
    final body = '''
{
  "sortby": "${sortby}",
  "orderby": "${orderby}",
  "page": ${page},
  "perpage": ${perPage}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Applicant query',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/getapplicants',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'sortby': sortby,
        'orderby': orderby,
        'page': page,
        'perPage': perPage,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class EditCall {
  static Future<ApiCallResponse> call({
    String name = '',
    String position = '',
    String dept = '',
    String status = '',
    String note = '',
    String upload = '',
    int applicantsId,
    String authToken = '',
  }) {
    final body = '''
{
  "name": "${name}",
  "position": "${position}",
  "dept": "${dept}",
  "status": "${status}",
  "note": "${note}",
  "upload": "${upload}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edit',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/applicants/${applicantsId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'name': name,
        'position': position,
        'dept': dept,
        'status': status,
        'note': note,
        'upload': upload,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class MagicLinkCall {
  static Future<ApiCallResponse> call({
    String email = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'magicLink',
      apiUrl: 'https://api.ahglab.com/api:1rjaEun5/auth/magic-link',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
    );
  }
}

class MagicLoginCall {
  static Future<ApiCallResponse> call({
    String token = '',
  }) {
    final body = '''
{
  "magic_token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'magicLogin',
      apiUrl: 'https://api.ahglab.com/api:1rjaEun5/auth/magic-login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'token': token,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ChartCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'chart',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/chart/statistics',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ApplicantHistoryCall {
  static Future<ApiCallResponse> call({
    int applicantId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'applicantHistory',
      apiUrl:
          'https://api.ahglab.com/api:rHt2aRC2/applicant_history/${applicantId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class LatestApplicantCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'latestApplicant',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/applicants/latest/query',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ApplicantDashboardCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'applicant dashboard',
      apiUrl: 'https://api.ahglab.com/api:rHt2aRC2/applicants/dashboard/query',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class AuthMeCall {
  static Future<ApiCallResponse> call({
    String authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'authMe',
      apiUrl: 'https://api.ahglab.com/api:1rjaEun5/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
    );
  }
}
