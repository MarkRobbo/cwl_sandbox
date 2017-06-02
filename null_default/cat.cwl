cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

inputs:
  input_file:
    type: File?
    inputBinding:
      position: 1
    default: {"class": "File", "path": "./empty.txt"}

outputs: []

baseCommand: cat
