integer::ii=1
block
integer::jj=2
ii=jj
  block
  integer::ii
  ii=jj
  kk=3
    block
    integer::ii
    ii=kk
    if(ii==3)print*,"1:pass"
    end block
  if(ii==2)print*,"2:pass"
  end block
if(ii==2)print*,"3:pass"
end block

end
