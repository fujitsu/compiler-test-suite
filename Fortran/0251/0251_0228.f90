integer::ii(2)
call sub(size(ii))
contains
subroutine sub(d1)
integer::d1
associate(d1=>d1+4)
block
integer::arr(4)
  arr=d1
  x1:block
  integer::ii
  ii=size(arr)
  if(arr(2)==6)print*,"1:pass"
  if(ii==4)print*,"Pass"
  end block x1
end block
if(d1==6)print*,"2:pass"
end associate
if(d1==2)print*,"3:pass"
end subroutine
end

