interface
function func(pp) result(rst)
intent(in) :: pp
intrinsic abs
procedure(abs) ,pointer :: pp
end function
end interface

intrinsic abs
if(func(abs) /= abs(1.25)) print*, 101
print*, "PASS"
end

function func(pp) result(rst)
intent(in) :: pp
intrinsic abs
procedure(abs) ,pointer :: pp
rst = pp(1.25)
end function
