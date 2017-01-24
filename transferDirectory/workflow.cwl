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
  fileC:
    type: File
    outputSource: lsDir/outputFile

steps:
  concat:
    run: ./concat.cwl
    in:
      files: [fileA, fileB]
    out: [outputDir]

  lsDir:
    run: ./lsdir.cwl
    in:
      inputdir: concat/outputDir
    out: [outputFile]














