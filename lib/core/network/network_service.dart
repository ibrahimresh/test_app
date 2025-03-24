import 'package:dio/dio.dart';
import 'package:flutter_test_app/config/api_endpoints.dart';

class DioNetworkService {
  final Dio _dio;

  Dio get dio => _dio;

  ///BASE OPTIONS
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: APIEndpoints.baseUrl,
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
  );

  ///INTERCEPTORS
  final List<Interceptor> _interceptors = [];

  InterceptorsWrapper get _interceptorWrapper => InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['content-type'] = 'application/json';
          // if (SharedData.shared.token != null) {
          //   options.headers['authorization'] = "Bearer ${SharedData.shared.token}";
          // }
          return handler.next(options);
        },
        onError: (e, handler) async {
          return handler.next(e);
        },
        onResponse: (response, handler) async {
          return handler.next(response);
        },
      );

  ///CONSTRUCTORS
  DioNetworkService._(
    this._dio,
  );

  factory DioNetworkService() {
    final obj = DioNetworkService._(
      Dio(),
    );
    obj._dio.options = obj._baseOptions;
    obj._dio.interceptors.addAll(
      [
        ...obj._interceptors,
        obj._interceptorWrapper,
      ],
    );
    return obj;
  }
}
