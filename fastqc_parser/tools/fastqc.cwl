#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

requirements:
- $import: envvar-global.yml

hints:
- class: DockerRequirement
  dockerPull: scidap/fastqc:v0.11.2
  dockerFile: >
    $import: fastqc-Dockerfile

inputs:
  fastq_file:
    type: File
    inputBinding:
      position: 1

baseCommand: [fastqc, --outdir, ., --extract]
outputs:
  report_dir:
    type: Directory
    outputBinding:
      glob: "."