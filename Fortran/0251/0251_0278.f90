integer::ii=1
block
asynchronous::ii
ii=2
call sub(ii)
end block
contains
subroutine sub(d1)
integer,asynchronous::d1
block
if(d1==2)print*,"1:pass"
  block
  integer::d1
  d1=3
  end block
  if(d1/=3)then
  d1=4
  print*,"2:pass"
  end if
end block
if(d1==4)print*,"3:pass"
end subroutine 
end

