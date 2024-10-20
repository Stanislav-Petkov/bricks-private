import 'package:auto_route/auto_route.dart';
import '../../../core/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/{{feature_name.snakeCase()}}_cubit.dart';

@RoutePage()
class {{feature_name}}Page extends StatelessWidget {
  const {{feature_name}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:BlocProvider<{{feature_name}}Cubit>(
          create: (context) => getIt<{{feature_name}}Cubit>(),
          child: BlocConsumer<{{feature_name}}Cubit, {{feature_name}}State>(
            listener: (context, state) {
              if (state is {{feature_name}}Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Center(
                child: FilledButton(
                  child: Text('example'),
                  onPressed: () => context.read<{{feature_name}}Cubit>().getSomeStrings(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
