module m1
type x
integer,allocatable::z(:)
end type
contains
subroutine sub01()
type(x)::x1
return
entry      sub02()
do i=1,3
x1=fun()
call chk(x1)
if (i==3)return
end do
entry      sub03()
return
entry      sub04()
do i=1,3
x1=fun()
call chk(x1)
if (i==3)return
end do
return
entry      sub05()
do i=1,3
x1=fun()
call chk(x1)
if (i==3)return
end do
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
