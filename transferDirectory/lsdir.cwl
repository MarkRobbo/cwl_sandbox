cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

requirements:
  - class: InlineJavascriptRequirement
  - class: ShellCommandRequirement


baseCommand: ls
arguments:
  - valueFrom: $('> ' + 'lsdir.txt')
    position: 100000
    shellQuote: false

inputs:
  inputdir:
    type: Directory
    inputBinding:
      position: 1

outputs:
  outputFile:
    type: File
    outputBinding:
      glob: "lsdir.txt"

