module m1
type x
integer,allocatable::z(:)
end type
contains
recursive function sub01() result(p)
type(x)::x1,p
type(x),intent(out)::d1,d2,d3,d4,d5,d6,d7,d8,d9,da
p=x(va())
return
entry      sub02(d1) result(p)
d1=x(va())
x1=fun()
call chk(x1)
p=x(va())
return
entry      sub03(d2,d3) result(p)
p=x(va())
d2=x(va())
d3=x(va())
return
entry      sub04(d4,d5,d6) result(p)
d4=x(va())
d5=d4
d6=d5
p=x(va())
x1=fun()
call chk(x1)
return
entry      sub05(d7,d8,d9,da) result(p)
d7=x(va())
d8=d7
d9=d8
da=d9
p=x(va())
x1=fun()
call chk(x1)
end function

recursive function fun() result(a1)
type(x)::a1,a2
allocate(a1%z(3))
a1=x((/1,2,3/))
return
entry funx1() result(a1)
a2=x((/1,2,3/))
return
entry funx2() result(a1)
a2=x((/1,2,3/))
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
type(x)::d1,d2,d3,d4,d5,d6,d7,d8,d9,da
call chk( sub01() )
call chk( sub02(d1) )
call chk( sub03(d2,d3) )
call chk( sub04(d4,d5,d6) )
call chk( sub05(d7,d8,d9,da) )
call chk(d1)
call chk(d2)
call chk(d3)
call chk(d4)
call chk(d5)
call chk(d6)
call chk(d7)
call chk(d8)
call chk(d9)
call chk(da)
print *,'pass'
end
