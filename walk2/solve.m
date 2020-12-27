function solve(fin, fout)

    x = fscanf(fin, '%d');
    z=mod(x,2);

    K=0;

    if z==0

    Y=nchoosek(x,(x/2));
    K=Y^2/ 4^x;

    end

    fprintf(fout,"%.12f\n",K);
end