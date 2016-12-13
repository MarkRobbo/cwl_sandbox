cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ubuntu
baseCommand: cp

requirements:
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - $(inputs.src)

inputs:
  src:
    type: File
    inputBinding:
      position: 1
      valueFrom: $(self.basename)

  target:
    type: string
    inputBinding:
      position: 2

outputs:
  out_src:
    type: File
    outputBinding:
      glob: "Hello1.txt"
  out_target:
    type: File
    outputBinding:
      glob: "Hello2.txt"
