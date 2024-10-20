import '../model/{{feature_name.snakeCase()}}_model.dart';

abstract class {{repository_name}}Repository {
  Future<{{feature_name}}Model> get{{feature_name}}();
}
