module m1
type x
integer,allocatable::z(:)
end type
contains
function sub01() result(p)
type(x)::x1,p
p=x(va())
return
entry      sub02() result(p)
x1=fun()
call chk(x1)
p=x(va())
entry      sub03() result(p)
p=x(va())
return
entry      sub04() result(p)
p=x(va())
x1=fun()
call chk(x1)
return
entry      sub05() result(p)
p=x(va())
x1=fun()
call chk(x1)
end function

function fun() result(a1)
type(x)::a1
allocate(a1%z(3))
a1=x((/1,2,3/))
end function

function va() result(a1)
integer,allocatable::a1(:)
allocate(a1(3))
a1=(/1,2,3/)
end function

subroutine chk(z)
type(x),intent(in)::z
if (any(z%z/=(/1,2,3/)))write(6,*) "NG"
end subroutine
end
use m1
call chk( sub01() )
call chk( sub02() )
call chk( sub03() )
call chk( sub04() )
call chk( sub05() )
print *,'pass'
end
