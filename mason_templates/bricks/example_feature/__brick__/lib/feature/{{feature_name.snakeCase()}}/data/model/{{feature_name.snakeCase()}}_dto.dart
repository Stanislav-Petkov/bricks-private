import 'package:dart_mappable/dart_mappable.dart';
import '../../domain/model/{{feature_name.snakeCase()}}_model.dart';
part '{{feature_name.snakeCase()}}_dto.mapper.dart';

@MappableClass()
class {{feature_name}}Dto with {{feature_name}}DtoMappable {
  {{feature_name}}Dto();

  static const fromJson = {{feature_name}}DtoMapper.fromMap;

  {{feature_name}}Model toModel() {
    return {{feature_name}}Model();
  }
}
