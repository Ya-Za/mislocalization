function main()
    % Main function
    %
    % to see log file
    % >>> type('log.txt');
    %
    % Notations
    % ---------
    % - fix  : fixation
    % - sac  : saccade
    % - corr : correlation
    % - idx  : indexes

    % close all figures and clear command window
    close('all');
    clc();

    % add `lib`, and all its subfolders to the path
    addpath(genpath('lib'));

    % copy command widnow to `log.txt` file
    % diary('log.txt');

    % display current date/time
    disp(datetime('now'));

    % start main timer
    main_timer = tic();
    
    % plot mean pairwise distance of probe locations over time
    plotPairwiseDistance();

    % plot displacements for different locations and times
    plotDisplacement();

    fprintf('\n\n');
    toc(main_timer);
    % diary('off');

    % exit();
end
