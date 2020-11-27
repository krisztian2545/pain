function solve(fin, fout)
    asd=fscanf(fin,"%d %f");
    N = asd(1);
    P = asd(2);
    K = 1;

    while true
        x = 1.0 - (N-K)*(N-K-1) / (N*(N-1));
        if x >= P 
            break;
        end
        K = K +1;
    end
    
    
    fprintf(fout,"%d\n",K);
end