module m1
pointer ip
contains
subroutine x
call s(if())
 contains
function if()
pointer if
allocate(if)
ip=>if
end function
subroutine s(if)
if=1
end subroutine
end subroutine
end
use m1
call x
if (ip/=1) print *,101
print *,'pass'
end
