function solve(fin,fout)
  N=fscanf(fin,"%d");
  
  pss = 0;
  for i=1:N
    pss = pss + 3^(i-1) * (1/(2^i))^2;
  endfor
  
  p = 1- pss;
  fprintf(fout,"%.12f\n",p);
end
