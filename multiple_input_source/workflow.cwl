cwlVersion: v1.0
class: Workflow

requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement
  - class: MultipleInputFeatureRequirement

inputs:
  input_1:
    type: int
  input_2:
    type:
    - File
    - int

outputs:
  resut:
    type: int
    outputSource: echo/result

steps:
  echo:
    run: echo.cwl
    in:
      data:
        source: [input_1, input_2]
        valueFrom: |
          ${
              return self[0] + self[1];
          }
    out: [result]










