cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

requirements:
  - class: InlineJavascriptRequirement
  - class: ShellCommandRequirement


baseCommand: cat
arguments:
  - valueFrom: $('> ' + 'concatenated.txt')
    position: 100000
    shellQuote: false

inputs:
  files:
    type: File[]
    inputBinding:
      position: 1

outputs:
  outputFile:
    type: File
    outputBinding:
      glob: concatenated.txt

