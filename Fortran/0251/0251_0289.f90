Integer::ii
block
integer,parameter::jj(*)= [1,2]
ii = jj(1) * jj(2)
  block
  integer::ii
  ii=jj(2)
  kk=3
    block
    integer::ii
    ii=kk
    if(ii==3)print*,"1:pass"
    end block
  if(ii==2)print*,"2:pass"
  end block
if(ii==2)print*,"3:pass"
ii = 20
end block
if(ii == 20)print*,"4:pass"
end
