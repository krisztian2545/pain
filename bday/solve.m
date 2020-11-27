function solve(fin,fout)
  M=fscanf(fin,"%d");
  P=-1;
  while true
    if M<2 
      P=0.0;
      break;
    end
    if M>365 
      P=1.0;
      break;
    end
    P=1.0-prod(1.0-(0:(M-1))/365);
    break
  end
  fprintf(fout,"%.12f\n",P);
end