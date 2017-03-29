cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

requirements:
  - class: InlineJavascriptRequirement

baseCommand: ls
arguments:
  - valueFrom: $(inputs.input_dir)
    position: 1

inputs:
  input_dir:
    type: Directory

outputs: []

