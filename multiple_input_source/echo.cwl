cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: ubuntu

requirements:
- class: InlineJavascriptRequirement

inputs:
  data:
    type: int
    inputBinding:
      position: 1

stdout: output.txt

outputs:
  result:
    type: int
    outputBinding:
      loadContents: true
      glob: output.txt
      outputEval: |
        ${
          return parseInt(self[0].contents);
        }

baseCommand: echo
