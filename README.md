# bash-yaml

[![Build Status](https://travis-ci.org/jasperes/bash-yaml.svg?branch=master)](https://travis-ci.org/jasperes/bash-yaml)

Bash script to read a Yaml file and create variables.

## Working on

- Linux
- OSX

## Getting Started

### Usage

Copy the `script/yaml.sh` file and import on your script: `source yaml.sh`

Then two functions are viable:

- **parse_yaml**: Output result from the readed yaml file.
- **create_variables**: Read and create variables based on yaml file passed by argument.

Look at `test` folder to see more.

### Testing

You can test if your yaml file will be readed correctly based on test folder.

## Known issues

- Object lists must be informed all attributes. Null must be "attr: ".

## Credits

This project was started based on @pkuczynski gist. Found it [here](https://gist.github.com/pkuczynski/8665367)
