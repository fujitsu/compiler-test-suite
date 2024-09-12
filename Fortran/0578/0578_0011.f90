intrinsic abs
real::n
n = func(abs,abs)
if(n /= 5) print*,101
print*,"PASS"

contains
function func(pp1,pp2) result(rst)
intent(in) :: pp1,pp2
intrinsic abs
real::rst
procedure(abs) ,pointer :: pp1
procedure(abs) ,pointer :: pp2
rst=pp1(-2.0)+pp2(-3.0)
end function
end
