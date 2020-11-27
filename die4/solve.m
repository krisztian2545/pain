function solve(fin, fout)
    asd=fscanf(fin,"%d %d");
    n = asd(1);
    S = asd(2);

    pre=zeros(1,6);
    p=1/6^n;
    A = ones(1, n);
    for i=1:6^n
        m=max(A); 
        pre(m)=pre(m)+p;
        
        A(1) = A(1) +1;
        for j = 1:(length(A)-1)
                if (A(j) == 7)
                A(j) = 1;
                A(j+1) = A(j+1) +1;
                endif
        endfor
    end

    
    P=0.0;
    if S>0 && S<7
        P=pre(S);
    end

    fprintf(fout,"%.12f\n",P);
end