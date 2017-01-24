cwlVersion: v1.0
class: Workflow

requirements:
  - class: InlineJavascriptRequirement

inputs:
  input_fastq_file:
    type: File

outputs:
  parse_fastqc_output_file:
    type: File
    outputSource: parse_fastqc_results/output_file

steps:
  fastqc:
    run: ../tools/fastqc.cwl
    in:
      fastq_file: input_fastq_file
    out: [report_dir]

  parse_fastqc_results:
    run: ../tools/parse-fastqc-results.cwl
    in:
      report_dir: fastqc/report_dir
    out: [output_file]
