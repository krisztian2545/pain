function solve(fin,fout)
  P=fscanf(fin,"%f")
  temp = -1;
  M=1;
  while true
    if M<2 
      temp=0.0;
    end
    if M>365 
      temp=1.0;
    end
    if temp == -1
        temp=1.0-prod(1.0-(0:(M-1))/365);
    end
    if temp > P
        break;
    end

    temp = -1;
    M = M+1;
  end
  fprintf(fout,"%d\n",M);
end