subroutine s1
type b
integer::x1
class(*) ,pointer :: ip
end type
type(b) :: sa(1)
type(b) ,pointer:: ss
call sub(sa)
ss=>f1()
sa(1)=f2()
contains
subroutine sub(ii)
type(b) :: ii(1)
end subroutine
function f1() result(r)
type(b),pointer :: r
r=>null()
end function
function f2() result(r)
type(b) :: r
r%x1=1
end function
end
call s1
print *,'pass'
end
