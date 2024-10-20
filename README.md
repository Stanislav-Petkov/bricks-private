# bricks

A project with bricks

First clone the private-bricks repository in the folder where the current project is located.
https://github.com/Stanislav-Petkov/private-bricks

Then run the command `mason init` in the project's main folder.
The first one is the `example_feature` brick

To generate the files from it, go to your project's main folder and run the commands:

1. `mason init`

This command is to create the brick from the repository that you previously cloned one folder above 
the current project folder.

2. `mason add example_feature --path ../bricks-private/mason_templates/bricks/example_feature`

This command is to create the brick from the repository directly, but you need to have access to it.
`mason add example_feature --git-url https://github.com/CreoTech-Group/bricks --git-path mason_templates/bricks/example_feature`
`mason add example_feature --git-url https://github.com/Stanislav-Petkov/bricks-private --git-path mason_templates/bricks/example_feature`

3. `mason make example_feature`


Notes for a brick with name `example_feature`:
`mason init` will create `mason.yaml` file. 
`mason add` will set the location of the brick code in the mason.yaml
`mason make` will generate the structure of the brick in your project's `lib` folder and it will
prompt to enter the needed variables from the brick configuration, such as the name of the feature
and the name of the repository.
It will generate `.mason` folder and `mason-lock.json` file
The presentation layer part of the feature will be generated from the `presentation_layer` brick