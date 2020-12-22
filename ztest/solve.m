function solve(fin, fout)
    pkg load statistics;

    all = transpose(fscanf(fin, '%f'));

    u0 = all(1);
    sigma = all(2);
    alpha = all(3);
    mode = all(4);
    x=all(5:end);

    if (mode == -1.0)
        H=ztest(x, u0, sigma, 'Tail', 'left', 'Alpha', alpha);
    elseif (mode == 0.0)
        H=ztest(x, u0, sigma, 'Tail', 'both', 'Alpha', alpha);
    else
        H=ztest(x, u0, sigma, 'Tail', 'right', 'Alpha', alpha);
    endif
    
    fprintf(fout,"%d\n",H);
end