cwlVersion: v1.0
class: Workflow

inputs:
  input_file:
    type: File

outputs:
  output_file:
    type: File
    outputSource: copy_3/output_file

steps:
  copy_1:
    run: copy.cwl
    in:
      input_file: input_file
    out: [output_file]

  copy_2:
    run: copy.cwl
    in:
      input_file: copy_1/output_file
    out: [output_file]

  copy_3:
    run: copy.cwl
    in:
      input_file: copy_2/output_file
    out: [output_file]










