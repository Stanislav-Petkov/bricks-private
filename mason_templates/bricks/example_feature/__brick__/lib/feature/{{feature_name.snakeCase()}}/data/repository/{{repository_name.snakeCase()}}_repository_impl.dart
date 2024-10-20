import 'package:injectable/injectable.dart';
import '../../domain/model/{{feature_name.snakeCase()}}_model.dart';
import '../../domain/repository/{{repository_name.snakeCase()}}_repository.dart';

import '{{feature_name.snakeCase()}}_client.dart';

@LazySingleton(as: {{repository_name}}Repository)
class {{repository_name}}RepositoryImpl implements {{repository_name}}Repository {
  {{repository_name}}RepositoryImpl(this._{{feature_name.camelCase()}}Client);

  final {{feature_name}}Client _{{feature_name.camelCase()}}Client;

  @override
  Future<{{feature_name}}Model> get{{feature_name}}() async {
    return (await _{{feature_name.camelCase()}}Client.get{{feature_name}}Dto()).toModel();
  }
}
