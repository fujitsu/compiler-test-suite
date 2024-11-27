module m1
type x
integer,allocatable::z(:)
end type
contains
 recursive subroutine sub01()
type(x)::x1
return
entry      sub02()
x1=fun()
call chk(x1)
return
entry      sub03()
return
entry      sub04()
x1=fun()
call chk(x1)
return
entry      sub05()
x1=fun()
call chk(x1)
end subroutine

function fun() result(a1)
type(x)::a1
allocate(a1%z(3))
a1=x((/1,2,3/))
end function

subroutine chk(z)
type(x),intent(in)::z
if (any(z%z/=(/1,2,3/)))write(6,*) "NG"
end subroutine
end
use m1
call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
print *,'pass'
end
