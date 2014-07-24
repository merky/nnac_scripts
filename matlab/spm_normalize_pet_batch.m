function [] = spm_normalize_pet_batch(subjects_file, mri_file, pet_file)

    curdir = pwd;

    %Specify variables
    outLabel = 'preprocess_'; %output label

    % open subject list
    fid = fopen(subjects_file);
    subs = textscan(fid,'%s','Delimiter','\n');
    subjects = subs{1};

    data_dir = curdir;

    for i=1:length(subjects)
        subject = subjects{i};
        class(subject)

        % input variables
        subject_dir = strcat(data_dir,'/', subject);
        ref_img     = strcat(subject_dir,'/', pet_file);
        source_img  = strcat(subject_dir,'/', mri_file);

        spm_jobman('initcfg')
        matlabbatch = spm_normalize_and_smooth(ref_img, source_img);
        %save matlabbatch variable for posterity
        outName = strcat(subject_dir,'/preprocess_',date);
        save(outName, 'matlabbatch');

        %run matlabbatch job
        cd(subject_dir);
        try
            spm('defaults', 'PET');
            spm_jobman('serial', matlabbatch);
        catch
            cd(curdir);
            continue;
        end
        cd(curdir);
    end

end
