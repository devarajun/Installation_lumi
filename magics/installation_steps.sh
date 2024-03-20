#!/bins/bash
#use conda-container on LUMI to install Magics ( https://confluence.ecmwf.int/display/MAGP/Magics)
module load lumi-container-wrapper
conda-containerize new --prefix=/project/project_465000454/devaraju/softwares/Magics  env.yml
