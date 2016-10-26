cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

requirements:
  - class: InlineJavascriptRequirement

baseCommand: echo
arguments:
  - valueFrom: $(inputs.fileName.basename)
    position: 1
  - valueFrom: $(inputs.fileName.secondaryFiles[0].basename)
    position: 2

inputs:
  fileName:
    type: File
#    secondaryFiles:
#      - .bai
    secondaryFiles: |
       ${
           return {"location": self.location+".bai", "class": "File"};
       }

outputs: []

