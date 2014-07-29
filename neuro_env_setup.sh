# sharedly installed

# pubsw
pubsw="/space/nnac/pubsw"

# shared (on /space/)
shared_xnat_tools_dir="$pubsw/xnat_tools"
shared_nnac_dir="$pubsw/nnac"
shared_afni_dir="$pubsw/afni"
shared_c3d_dir="$pubsw/c3d/bin"
shared_bxe_dir="$pubsw/bxh_xcede/bin"
shared_c3d_bash="$pubsw/c3d/share/bashcomp.sh"

shared_ants_dir="$pubsw/ants/bin"
shared_fsl_dir="$pubsw/fsl"
shared_freesurfer_dir="$pubsw/freesurfer"
shared_freesurfer_qa_dir="$pubsw/freesurfer/QAtools"
shared_dcmtk_dir="$pubsw/dcmtk/dcmtk-3.6.0/bin"


########### matlab ###########
# MATLAB: toolboxes directory (loads recursively)
export MATLAB_TOOLBOXES="$pubsw/matlab/toolboxes/"
matlab_startup_local=$HOME/matlab/startup.m
matlab_startup_share=$pubsw/matlab/startup.m

reset_matlab(){
    # create soft link if not there
    echo "matlab startup script not found or not updated... creating"
    [[ ! -d $HOME/matlab ]] && mkdir $HOME/matlab
    rm -f $matlab_startup_local
    cp $matlab_startup_share $matlab_startup_local
}

# check for matlab startup script:
if [[ ! -r $matlab_startup_local ]]; then
    reset_matlab
fi

# check for differences
if [[ "$(diff $matlab_startup_share $matlab_startup_local)" != "" ]]; then
    reset_matlab
fi

################################

# NNAC tools
if [ -r $shared_nnac_dir ]; then
    export PATH=$PATH:$shared_nnac_dir
fi

# FSL
if [ -r $shared_fsl_dir ]; then
    export PATH=$PATH:$shared_fsl_dir/lib/5.0
    export FSL_DIR=$shared_fsl_dir
    source $shared_fsl_dir/5.0/etc/fslconf/fsl.sh
fi

# FREESURFER
if [ -r $shared_freesurfer_dir ]; then
    export PATH=$PATH:$shared_freesurfer_dir/bin
    export FREESURFER_HOME=$shared_freesurfer_dir
    source $FREESURFER_HOME/SetUpFreeSurfer.sh
fi

# FREESURFER QA TOOLS
if [ -r $shared_freesurfer_qa_dir ]; then
    export QA_SCRIPTS=$shared_freesurfer_qa_dir
    export QA_TOOLS=$QA_SCRIPTS
    export RECON_CHECKER_SCRIPTS=$shared_freesurfer_qa_dir
    export PATH=$PATH:$shared_freesurfer_qa_dir
fi

# XNAT TOOLS
if [ -r $shared_xnat_tools_dir ]; then
    export PATH=$PATH:$shared_xnat_tools_dir
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$shared_xnat_tools_dir/lib
fi

# AFNI
if [ -r $shared_afni_dir ]; then
    export PATH=$PATH:$shared_afni_dir
fi

# ANTS (used by CPAC)
if [ -r $shared_ants_dir ]; then
    # ANTSPATH requires backslash
    export ANTSPATH=$shared_ants_dir/
    export PATH=$PATH:$ANTSPATH
fi

# Convert3D (binaries)
if [ -r $shared_c3d_dir ]; then
    export PATH=$PATH:$shared_c3d_dir
fi

# Convert3D (bash auto-complete)
if [ -r $shared_c3d_bash ]; then
    source $shared_c3d_bash
fi

# DCMTK
if [ -r $shared_dcmtk_dir ]; then
    export PATH=$PATH:$shared_dcmtk_dir
fi

