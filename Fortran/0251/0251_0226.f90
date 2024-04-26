x1:block
integer::ii
ii=1
  block
  integer::ii
  ii=2
    block
    if(ii==2)then
    ii=kind(ii)
    end if
    end block
  if(ii==4)print*,"pass"
  end block
if(ii==1)print*,"pass"
end block x1
end
