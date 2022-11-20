# Hello world docker action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.
[WIP] There is another Github action that is creating a code-server in a Docker container.

## Inputs

## `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

## `time`

The time we greeted you.

## Example usage

uses: actions/hello-world-docker-action@v2
with:
  who-to-greet: 'Mona the Octocat'