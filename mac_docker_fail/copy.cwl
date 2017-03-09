cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu
requirements:
  - class: InlineJavascriptRequirement

inputs:
  input_file:
    type: File
    inputBinding:
      position: 1

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "./*"

baseCommand: cp
arguments:
  - valueFrom: |
      ${
        var ext = inputs.input_file.basename.split(".").slice(-1)[0];
        return inputs.input_file.basename.split(".").slice(0, -1).join(".") + "_copy." + ext;
      }
    position: 2
