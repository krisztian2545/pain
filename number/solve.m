function solve(fin, fout)

    all = fscanf(fin, '%d');
    a = all(1);
    b = all(2);

    A = all(3:(2+a));
    B = all((3+a):end);

    K = 1;
    bufferY=0;

    for i= 1:a
        for j=1:b
            x = A(i)*B(j);
            
            if x >0
                bufferY=bufferY + 1;
            
            endif

        endfor
    endfor

    K=(bufferY/(a*b));    
    
    fprintf(fout,"%.12f\n",K);
end