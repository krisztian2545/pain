function sim(M,KK, ISM, nev)
  
  Y = zeros(ISM, length(M)); # 1 ha a megfigyelt sokaságban van bday azonosság
  X=1:ISM;
  

  tt=tic();
  for k = M
    for j = X
      akt=randi(365,k,1);
      [frek,kp]=hist(akt,1:365);
      Y(j, k)=any(frek>(KK-1));
    end
  end
  
  Y = sum(Y) ./ ISM; # relatív gyakoriságok
  tt=toc(tt);

  mid=(M(2)-M(1));
  bar(Y,'BarWidth',mid/1.5);
  title(sprintf("bday,K=%d, ISM=%d, t=%.2fs",KK, ISM, tt));
  xlabel('size of the party(M)');
  ylabel(sprintf('relative frequency of getting %d equal bdays', KK));
  yticks(0:0.1:1);
  ylim([0,1]);
  xticks(M(1):mid:M(end));
  xlim([M(1)-mid./2,M(end)+mid./2]);
  
  saveas(gcf, nev);
end