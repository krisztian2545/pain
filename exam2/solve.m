function solve(fin, fout)
    asd=fscanf(fin,"%d %d");
    N = asd(1);
    K = asd(2);

    x = 1.0 - (N-K)*(N-K-1) / (N*(N-1));
    y = (1-x) + x*3.5;

    fprintf(fout,"%.12f\n",y);
end