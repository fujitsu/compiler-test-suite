integer::jj=0,kk=0
integer::ii=1
block
  integer::jj=2
  block
    integer::kk=3
    if(kk/=3) print*,101
  end block
call sub(ii,jj,kk)   
end block
if(ii==1)print*,"2:pass"
if(jj==0)print*,"3:pass"
if(kk==4)print*,"4:pass"
contains
subroutine sub(d1,d2,d3)
integer::d1,d2,d3
block
  block
  d2=d1+d2
  end block
  if(d1==1)print*,"1:pass"
  block
  d3=d2+d1
  end block
if(d2/=3)print*,"error",d2
end block
if(d3/=4)print*,"error",d3
end subroutine
end

