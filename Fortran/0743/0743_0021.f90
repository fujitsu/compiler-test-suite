module m1
type x
integer,allocatable::z(:)
end type
contains
recursive function sub01() result(p)
type(x)::x1,p
do i=1,3
p=x(va())
if (i==3)return
end do
entry      sub02() result(p)
do i=1,3
x1=fun()
call chk(x1)
p=x(va())
if (i==3)return
end do
entry      sub03() result(p)
do i=1,3
p=x(va())
if (i==3)return
end do
entry      sub04() result(p)
do i=1,3
p=x(va())
x1=fun()
call chk(x1)
if (i==3)return
end do
return
entry      sub05() result(p)
do i=1,3
p=x(va())
x1=fun()
call chk(x1)
if (i==3)return
end do
end function

recursive function fun() result(a1)
type(x)::a1
allocate(a1%z(3))
a1=x((/1,2,3/))
end function

recursive function va() result(a1)
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
