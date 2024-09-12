module m1
interface
subroutine sub(d)
integer ::d
end subroutine
integer function fun(d)
integer ::d
end function
end interface
end module

program main
use m1
integer,save::n=0
integer::ii
procedure(fun)::aa
procedure(sub)::bb
ii=aa(n)
call s1(bb)
if (n/=2)print*,101
if (ii/=10)print*,102
print*,"Pass"
contains
subroutine s1(dmy)
procedure(sub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,101
call dmy(n)
end subroutine
end 
integer function aa(n)
use m1
integer::n
n=n+1
aa=10
end function
subroutine bb(n)
n=n+1
end subroutine
