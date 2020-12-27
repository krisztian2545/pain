function sim(M, ISM, nev)
  
  Y = zeros(1, 3); # 1 ha a megfigyelt sokaságban van bday azonosság
  X=1:ISM;
  

  tt=tic();
  for k = X
      akt=randi(365,M,1);
      [frek,kp]=hist(akt,1:365);
      Y(max(frek)) += 1;
  end
  Y
  Y = Y ./ ISM; # relatív gyakoriságok
  tt=toc(tt);

  bar(Y);
  title(sprintf("bday,M=%d, ISM=%d, t=%.2fs",M, ISM, tt));
  xlabel('maximum size of cluster');
  ylabel('relative frequency');
  yticks(0:0.1:1);
  ylim([0,1]);
  xticks(0:5:35);
  xlim([0,35]);
  
  saveas(gcf, nev);
end