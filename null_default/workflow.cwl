cwlVersion: v1.0
class: Workflow

inputs:
  input_file:
    type: File?

outputs: []

steps:
  copy:
    run: cat.cwl
    in:
      input_file: input_file
    out: []











