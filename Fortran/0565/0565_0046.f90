call sub(fun())
print *, "PASS"
contains
function fun()
integer :: fun(2)
fun(1) = 2
fun(2) = 3
end function fun

subroutine sub(dmy)
integer,value :: dmy(:)
if(dmy(1) /= 2) print *,101
if(dmy(2) /= 3) print *,101
dmy = 5
end subroutine
end
