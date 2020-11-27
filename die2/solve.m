function solve(fin,fout)
    n=fscanf(fin,"%d");

    if (n>0)
        counter = zeros(1, (6*n)-(n-1));
        
        A = ones(1, n);

        for i = 1:6^n

            temp = sum(A);
            counter(temp-n+1) = counter(temp-n+1) +1;

            A(1) = A(1) +1;
            for j = 1:(length(A)-1)
                  if (A(j) == 7)
                    A(j) = 1;
                    A(j+1) = A(j+1) +1;
                  endif
            endfor
        endfor

        e = counter / 6^n;
    else 
        e = 0.0;
    endif
  
    for k = 1:length(e)
        fprintf(fout,"%.12f\n",e(k));
    endfor
end