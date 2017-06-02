cwlVersion: v1.0
class: Workflow

inputs:
  input_file:
    type: File?
    default: null
    format: "http://edamontology.org/format_2572"

outputs: []

steps:
  cat:
    run: cat.cwl
    in:
      input_file: input_file
    out: []

$namespaces:
  s: http://schema.org/
$schemas:
- http://schema.org/docs/schema_org_rdfa.html
s:name: "workflow"








