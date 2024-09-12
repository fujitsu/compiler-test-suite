intrinsic asin
intrinsic acos
real::n=0.0
n = func(asin,acos)
if(n /= acos(0.0)) print*,101
print*,"PASS"

contains
function func(pp1,pp2) result(rst)
intent(in) :: pp1,pp2
intrinsic asin
intrinsic acos
real::rst
procedure(abs) ,pointer :: pp1
procedure(abs) ,pointer :: pp2
rst=pp1(0.0)+pp2(0.0)
end function
end
