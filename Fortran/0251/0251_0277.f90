asynchronous::ii
ii=1
block
integer::ii=2
asynchronous::ii
  block
  if(ii==2)print*,"1:pass"
  end block
  block
  integer::ii=3
  block
  asynchronous::ii
  ii=4
  end block
  if(ii==4)print*,"2:pass"
  end block
end block
if(ii==1)print*,"pass"
end
