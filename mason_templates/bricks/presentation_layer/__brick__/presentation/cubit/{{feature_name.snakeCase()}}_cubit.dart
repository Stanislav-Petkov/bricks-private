import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../domain/model/{{feature_name.snakeCase()}}_model.dart';
import '../../domain/repository/{{repository_name.snakeCase()}}_repository.dart';

part '{{feature_name.snakeCase()}}_state.dart';

@injectable
class {{feature_name}}Cubit extends Cubit<{{feature_name}}State> {
  {{feature_name}}Cubit(this._{{repository_name.camelCase()}}Repository) : super({{feature_name}}Initial());

  final {{repository_name}}Repository _{{repository_name.camelCase()}}Repository;

  Future<void> getSomeStrings() async {
    emit({{feature_name}}Loading());
    try {
      final {{feature_name.camelCase()}}Model = await _{{repository_name.camelCase()}}Repository.get{{feature_name}}();
      emit({{feature_name}}Content({{feature_name.camelCase()}}Model: {{feature_name.camelCase()}}Model));
    } catch (e) {
      emit({{feature_name}}Error(message: e.toString()));
    }
  }
}
