cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

inputs:
  input_file:
    type:
      - "null"
      - File
    inputBinding:
      position: 1

outputs: []

baseCommand: cat
