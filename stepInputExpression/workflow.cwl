cwlVersion: v1.0
class: Workflow

requirements:
  - class: MultipleInputFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement

inputs:
  fileA:
    type: File
  fileB:
    type: File
  triggerFile:
    type: File

outputs:
  FileC:
    type: File
    outputSource: concat/outputFile

steps:
  concat:
    run: ./concat.cwl
    in:
      files:
        source: [fileA, fileB, triggerFile]
        valueFrom: |
          ${
            if (self.slice(2)[0].basename == "fail.txt"){
              return self.slice(0,1);
            } else {
              return self.slice(1,2);
            }
          }
    out: [outputFile]














