cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ubuntu
baseCommand: echo
arguments: ["return dir"]
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: $(inputs.fileName)
        entry: Some text inside the file

inputs:
  fileName:
    type: string

outputs:
  dir:
    type: Directory
    outputBinding:
      glob: "."

