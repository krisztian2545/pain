function solve(fin, fout)

    x = fscanf(fin, '%f');

    fprintf(fout,"%.12f %.12f %.12f\n", mean(x), std(x), median(x));
   
end