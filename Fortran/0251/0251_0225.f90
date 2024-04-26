integer::ii=1,arr(4)
block
  integer::ii=2
  if(SIZE(arr)== 5)then
  ii=ii+1
  else
  ii=ii+2
  end if
  if(ii==4)print*,"pass"
end block
block
if(ii==1)print*,"pass"
end block
end
