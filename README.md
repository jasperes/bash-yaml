# bash-yaml

[![Tests](https://github.com/jasperes/bash-yaml/workflows/Tests/badge.svg)](https://github.com/jasperes/bash-yaml/actions?query=workflow%3ATests)
[![Lint](https://github.com/jasperes/bash-yaml/workflows/Lint/badge.svg)](https://github.com/jasperes/bash-yaml/actions?query=workflow%3ALint)

Bash script to read a Yaml file and create variables.

## Working on

- Linux
- OSX

## Getting Started

### Usage

Copy the `script/yaml.sh` file and import on your script: `source yaml.sh`

Then two functions are viable:

- **parse_yaml**: Output result from the readed yaml file.
- **parse_frontmatter**: Output result from the readed frontmatter file.
- **create_variables**: Read and create variables based on yaml file passed by argument. **Note:** YAML only.

Now you can also use the script directly without sourcing it:

- For YAML
`yaml test/file.yml`

- For Frontmatter
`yaml -f test/frontmatter.md`

**IMPORTANT:** for Frontmatter, you MUST use the option -f or unexpected behavior can happen.

Look at `test` folder to see more.

### Testing

You can test if your yaml or frontmatter file will be readed correctly based on test folder.

## Known issues

- Object lists must be informed all attributes. Null must be "attr: ".
- User must use -f option for Frontmatter.

## Credits

This project was started based on @pkuczynski gist. Found it [here](https://gist.github.com/pkuczynski/8665367)
