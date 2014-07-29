function [matlabbatch]=preprocess_job(subject_dir, ref_img, src_img)
%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_fplist.dir = {subject_dir};
matlabbatch{1}.cfg_basicio.file_fplist.filter = ref_img;
matlabbatch{1}.cfg_basicio.file_fplist.rec = 'FPList';
matlabbatch{2}.cfg_basicio.file_fplist.dir = {subject_dir};
matlabbatch{2}.cfg_basicio.file_fplist.filter = src_img;
matlabbatch{2}.cfg_basicio.file_fplist.rec = 'FPList';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1) = cfg_dep;
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).tname = 'Session';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).tgt_spec{1}(1).name = 'class';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).tgt_spec{1}(1).value = 'cfg_files';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).sname = 'File Selector (Batch Mode): Selected Files';
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.spatial.realign.estwrite.data{1}(1).src_output = substruct('.','files');
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1) = cfg_dep;
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).tname = 'Reference Image';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(1).name = 'class';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(1).value = 'cfg_files';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).sname = 'File Selector (Batch Mode): Selected Files';
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.spm.spatial.coreg.estimate.ref(1).src_output = substruct('.','files');
matlabbatch{4}.spm.spatial.coreg.estimate.source(1) = cfg_dep;
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).tname = 'Source Image';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(1).name = 'class';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(1).value = 'cfg_files';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).sname = 'File Selector (Batch Mode): Selected Files';
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1});
matlabbatch{4}.spm.spatial.coreg.estimate.source(1).src_output = substruct('.','files');
matlabbatch{4}.spm.spatial.coreg.estimate.other = {''};
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{5}.spm.spatial.preproc.data(1) = cfg_dep;
matlabbatch{5}.spm.spatial.preproc.data(1).tname = 'Data';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.preproc.data(1).sname = 'Coregister: Estimate: Coregistered Images';
matlabbatch{5}.spm.spatial.preproc.data(1).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.preproc.data(1).src_output = substruct('.','cfiles');
matlabbatch{5}.spm.spatial.preproc.output.GM = [0 0 1];
matlabbatch{5}.spm.spatial.preproc.output.WM = [0 0 1];
matlabbatch{5}.spm.spatial.preproc.output.CSF = [0 0 0];
matlabbatch{5}.spm.spatial.preproc.output.biascor = 1;
matlabbatch{5}.spm.spatial.preproc.output.cleanup = 0;
matlabbatch{5}.spm.spatial.preproc.opts.tpm = {
                                               '/space/nnac/pubsw/matlab/toolboxes/spm8/tpm/grey.nii'
                                               '/space/nnac/pubsw/matlab/toolboxes/spm8/tpm/white.nii'
                                               '/space/nnac/pubsw/matlab/toolboxes/spm8/tpm/csf.nii'
                                               };
matlabbatch{5}.spm.spatial.preproc.opts.ngaus = [2
                                                 2
                                                 2
                                                 4];
matlabbatch{5}.spm.spatial.preproc.opts.regtype = 'mni';
matlabbatch{5}.spm.spatial.preproc.opts.warpreg = 1;
matlabbatch{5}.spm.spatial.preproc.opts.warpco = 25;
matlabbatch{5}.spm.spatial.preproc.opts.biasreg = 0.0001;
matlabbatch{5}.spm.spatial.preproc.opts.biasfwhm = 60;
matlabbatch{5}.spm.spatial.preproc.opts.samp = 3;
matlabbatch{5}.spm.spatial.preproc.opts.msk = {''};
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tname = 'Parameter File';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).sname = 'Segment: Norm Params Subj->MNI';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_exbranch = substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_output = substruct('()',{1}, '.','snfile', '()',{':'});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tname = 'Images to Write';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).value = 'image';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).sname = 'Realign: Estimate & Reslice: Resliced Images (Sess 1)';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_output = substruct('.','sess', '()',{1}, '.','rfiles');
matlabbatch{6}.spm.spatial.normalise.write.roptions.preserve = 0;
matlabbatch{6}.spm.spatial.normalise.write.roptions.bb = [-90 -126 -72
                                                          91 91 109];
matlabbatch{6}.spm.spatial.normalise.write.roptions.vox = [2 2 2];
matlabbatch{6}.spm.spatial.normalise.write.roptions.interp = 1;
matlabbatch{6}.spm.spatial.normalise.write.roptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.normalise.write.roptions.prefix = 'w';
matlabbatch{7}.spm.spatial.smooth.data(1) = cfg_dep;
matlabbatch{7}.spm.spatial.smooth.data(1).tname = 'Images to Smooth';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{7}.spm.spatial.smooth.data(1).sname = 'Normalise: Write: Normalised Images (Subj 1)';
matlabbatch{7}.spm.spatial.smooth.data(1).src_exbranch = substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{7}.spm.spatial.smooth.data(1).src_output = substruct('()',{1}, '.','files');
matlabbatch{7}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{7}.spm.spatial.smooth.dtype = 0;
matlabbatch{7}.spm.spatial.smooth.im = 0;
matlabbatch{7}.spm.spatial.smooth.prefix = 's';
end
