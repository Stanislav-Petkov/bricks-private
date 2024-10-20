import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

void run(HookContext context) async {
  // Add your post-generation code here
  // (Code executed immediately after the generation step)

  //Every time when we generate the code for the brick example_feature,
  // also generate the code for the brick presentation_layer
  final progress =
      context.logger.progress('Installing brick presentation layer');

  final presentationLayerPath = path.normalize(path.join(
    Directory.current.path,
    '../bricks/mason_templates/bricks/presentation_layer',
  ));

  if (!await Directory(presentationLayerPath).exists()) {
    context.logger.err('Presentation layer brick not found at $presentationLayerPath');
    return;
  }

  final generator = await MasonGenerator.fromBrick(
    Brick(location: BrickLocation(path: presentationLayerPath) )
    // Brick.git(
    //   GitPath(
    //     'https://github.com/CreoTech-Group/bricks',
    //     path: 'mason_templates/bricks/presentation_layer',
    //   ),
    // ),
  );
  final destination = Directory(
    path.join(
      Directory.current.path,
      'lib',
      'feature',
      (context.vars['feature_name'] as String).snakeCase,
    ),
  );
  final files = await generator.generate(
    DirectoryGeneratorTarget(destination),
    vars: <String, dynamic>{
      'feature_name': context.vars['feature_name'],
      'repository_name': context.vars['repository_name'],
    },
    fileConflictResolution: FileConflictResolution.overwrite,
  );

  for (final file in files) {
    context.logger.info('Generated ${file.path}');
  }

  progress.complete();
}
