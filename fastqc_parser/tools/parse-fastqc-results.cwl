#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

requirements:
- $import: envvar-global.yml
- class: InlineJavascriptRequirement

hints:
- class: DockerRequirement
  dockerPull: scidap/parse-fastqc-results:v0.0.1
  dockerFile: >
    $import: parse-fastqc-results-Dockerfile

inputs:
  report_dir:
    type: Directory
    inputBinding:
      position: 1
    doc: >
      Path to the folder, where fastqc exported its results

baseCommand: [perl, /usr/local/bin/parse_fastqc_results.pl]

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "*.txt"