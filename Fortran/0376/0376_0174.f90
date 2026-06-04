module m1
type x
integer,allocatable::z(:)
end type
contains
recursive function sub01() result(p)
type(x)::x1,p
type(x),intent(out)::d2,d3
p=x(va())
return
entry      sub03(d2,d3) result(p)
p=x(va())
d2=x(va())
d3=x(va())
end function

recursive function va() result(a1)
integer,allocatable::a1(:)
end function

subroutine chk(z)
type(x),intent(in)::z
if (any(z%z/=(/1,2,3/)))print *,'fail'
end subroutine
end
subroutine xxxxxx
use m1
type(x)::d1,d2,d3,d4,d5,d6,d7,d8,d9,da
call chk( sub01() )
call chk( sub03(d2,d3) )
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
end
print *,'pass'
end


