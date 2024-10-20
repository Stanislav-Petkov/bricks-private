import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/{{feature_name.snakeCase()}}_dto.dart';

part '{{feature_name.snakeCase()}}_client.g.dart';

@RestApi()
abstract class {{feature_name}}Client {
  factory {{feature_name}}Client(Dio dio, {String baseUrl}) = _{{feature_name}}Client;

  @GET('/{{feature_name.paramCase()}}/')
  Future<{{feature_name}}Dto> get{{feature_name}}Dto();
}
