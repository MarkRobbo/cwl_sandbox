cwlVersion: v1.0
class: Workflow

requirements:
  - class: MultipleInputFeatureRequirement

inputs:
  input_file_1:
    type: File

  input_file_2:
    type: File

outputs: []

steps:
  files_to_folder:
    run: files-to-folder.cwl
    in:
      input_files: [input_file_1, input_file_2]
    out: [folder]

  list_dir:
    run: list_dir.cwl
    in:
      input_dir: files_to_folder/folder
    out: []











