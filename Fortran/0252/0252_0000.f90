intrinsic :: sin
Real::x1,x2
block
intrinsic :: sin
call sub(SIN,x1)
a1=10
b1=20
x3=a1+b1+fun(ii)
end block
call sub(SIN,x2)
if (x1 == x2)print*,"pass"
contains
subroutine sub(d1,res)
REAL::res
res=d1(90)
end subroutine
function fun(d2)
integer::d2,fun
fun=30.0
end function
end
