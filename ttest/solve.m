function solve(fin, fout)
    pkg load statistics;

    all = transpose(fscanf(fin, '%f'));

    u0 = all(1);
    alpha = all(2);
    mode = all(3);
    x = all(4:end);

    if(mode == -1.0)
        H = ttest(x, u0, 'Tail', 'left', 'Alpha', alpha);
    elseif (mode == 0.0)
        H = ttest(x, u0, 'Tail', 'both', 'Alpha', alpha);
    else
        H = ttest(x, u0, 'Tail', 'right', 'Alpha', alpha);
    endif

    fprintf(fout, "%d\n",H);
end