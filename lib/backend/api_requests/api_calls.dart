import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GoogleMapsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Google Maps',
      apiUrl: 'maps-embed-backend.googleapis.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MapGymRouteCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Map Gym Route',
      apiUrl:
          'https://www.google.com.br/maps/place/Team+Cruz+Centro+de+Treinamento+-+R.+Min.+Rafael+de+Barros+Monteiro,+117+-+Jardim+dos+Camargos,+Barueri+-+SP,+06410-080/@-23.5028911,-46.8697073,16z/data=!4m9!1m2!2m1!1sct+crossfit!3m5!1s0x94cf03ce89d8e3ff:0x90a9eecf95477d72!8m2!3d-23.5028911!4d-46.8697073!16s%2Fg%2F11bc8x1_j0',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '/login',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EmailCodeCall {
  static Future<ApiCallResponse> call({
    String? message = 'Olá, esse é o seu código de verificação:',
    int? code = 1234,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EmailCode',
      apiUrl: 'https://rest.clicksend.com/v3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AtualizarSenhaCall {
  static Future<ApiCallResponse> call({
    List<String>? senhaList,
  }) {
    final senha = _serializeList(senhaList);

    final ffApiRequestBody = '''
{
  "senha": "atualizarsenha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarSenha',
      apiUrl: 'https://rest.clicksend.com/v3',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckinRequestCall {
  static Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{
  "checkin": "confirmar checkin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckinRequest',
      apiUrl: 'https://rest.clicksend.com/v3',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckinResponseCall {
  static Future<ApiCallResponse> call({
    List<bool>? confirmarSenhaList,
  }) {
    final confirmarSenha = _serializeList(confirmarSenhaList);

    return ApiManager.instance.makeApiCall(
      callName: 'CheckinResponse',
      apiUrl: 'https://rest.clicksend.com/v3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CadastroCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro',
      apiUrl: '/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
