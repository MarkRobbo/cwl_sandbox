cwlVersion: v1.0
class: Workflow

inputs:
  input_file:
    type: File?
    default: null
    format: "iana:text/tab-separated-values"

outputs: []

steps:
  cat:
    run: cat.cwl
    in:
      input_file: input_file
    out: []

$namespaces:
  iana: https://www.iana.org/assignments/media-types/
