block
integer,dimension(*)::ii
parameter(ii = [2,4])
call sub(ii)
if(ii(2)==4)print*,"1:pass"
end block
contains
subroutine sub(d1)
integer::d1(2)
block
integer::ii
ii=d1(1)+1
if(ii == 3)print*,"3:pass"
end block
end subroutine
end
