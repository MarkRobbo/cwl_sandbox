cwlVersion: v1.0
class: Workflow

requirements:
  - class: StepInputExpressionRequirement
  - class: MultipleInputFeatureRequirement
  - class: InlineJavascriptRequirement

inputs:
  int_1:
    type: int?
  int_2:
    type: int?

outputs:
  result:
    type: int
    outputSource: sum/result

steps:
  sum:
    run: sum.cwl
    in:
      data:
        source: [int_1, int_2]
        valueFrom: |
          ${
            var sum = 0;
            for (var i = 0; i < self.length; i++){
              sum += self[i];
            };
            return sum;
          }
    out: [result]










