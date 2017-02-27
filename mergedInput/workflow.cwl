cwlVersion: v1.0
class: Workflow

requirements:
  - class: MultipleInputFeatureRequirement

inputs:
  fileA:
    type: File
  fileB:
    type: File

outputs:
  FileC:
    type: File
    outputSource: concat/outputFile

steps:
  concat:
    run: ./concat.cwl
    in:
      files: [fileA]
    out: [outputFile]














