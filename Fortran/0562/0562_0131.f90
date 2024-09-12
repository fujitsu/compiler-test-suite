Module m1
interface
integer function sub()
end function
end interface

integer :: n=0
contains
subroutine ss
procedure (sub):: foo
procedure (sub),pointer:: pp
pp=>foo
jj=pp()
if(jj/=11)print*,102
call s1(foo)
end subroutine
subroutine s1(p)
integer::k
procedure (sub),pointer,intent(in):: p
if (.not.associated(p))print*,101
k=p()
if(k/=11)print*,103
end subroutine
end module
use m1
call ss
if (n/=2) print *,101
print *,'pass'
end
integer function foo()
use m1
n=n+1
foo=11
end function
