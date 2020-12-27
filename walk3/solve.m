function solve(fin, fout)

    x = fscanf(fin, '%d');
   
    y=1;
    for i=1:x

        y=2^i-y;

    i++;
    end

    K=y/2^x;

    fprintf(fout,"%.12f\n",K);
end