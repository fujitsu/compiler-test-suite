module m
abstract interface
 subroutine sub(x,y)
 integer ,intent(in)::x
 integer ,intent(in)::y
 end subroutine
end interface
end module

use m
procedure (sub) :: sub1
procedure (sub), pointer::p
procedure(p) ,pointer :: prc
procedure (sub) :: p2
p=>sub1
prc=>sub1
call prc(5,10)
call p2(5,7)
print*,"pass"
end 

subroutine sub1 (x,y)
integer ,intent(in)::x
integer ,intent(in)::y
if(x+y .ne. 15)print*,"101"
end subroutine
subroutine p2 (x,y)
integer ,intent(in)::x
integer ,intent(in)::y
if(x+y .ne. 12)print*,"102"
end subroutine

