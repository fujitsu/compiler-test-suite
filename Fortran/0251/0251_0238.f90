integer::ii=1,a=1
block
  integer::ii=2
  associate(a=>ii+1)
    block
    integer::ii
    ii=a
    if(ii==3)print*,"1:pass"
    end block
  end associate
  if(a==1)print*,"2:pass"
  associate(a=>ii+1)
  if(a==3)then
  ii=a+1
  else
  ii=a+2
  end if
  end associate
  if(ii==4)print*,"3:pass"
  associate(a=>ii+1)
  block
    associate(b=>a+1)
    if(b==6)print*,"4:pass" 
    end associate
  end block
  if(ii==4)print*,"5:pass"
  if(a==5)print*,"6:pass"
  end associate
end block
if(ii/=1)print*,"error"
end

