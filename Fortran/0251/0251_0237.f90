integer::ii=1,jj=2
block
  integer::ii=2
  associate(ii=>jj+1)
  if(ii==3)print*,"1:pass"
    block
    jj=ii+1
    associate(jj=>ii+2)
    if(jj==5)print*,"2:pass"
    end associate
    if(jj==4)print*,"3:pass"
    end block
  end associate
  if(ii==2)print*,"4:pass"
  if(jj==4)print*,"5:pass"
end block
if(ii==1)print*,"6:pass"
end
