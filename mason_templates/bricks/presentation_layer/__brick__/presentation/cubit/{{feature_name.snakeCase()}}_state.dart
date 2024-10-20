part of '{{feature_name.snakeCase()}}_cubit.dart';

@immutable
sealed class {{feature_name}}State {}

final class {{feature_name}}Initial extends {{feature_name}}State {}

final class {{feature_name}}Loading extends {{feature_name}}State {}

final class {{feature_name}}Content extends {{feature_name}}State {
  {{feature_name}}Content({required this.{{feature_name.camelCase()}}Model});

  final {{feature_name}}Model {{feature_name.camelCase()}}Model;
}

final class {{feature_name}}Error extends {{feature_name}}State {
  {{feature_name}}Error({required this.message});

  final String message;
}
