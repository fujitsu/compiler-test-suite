call ss(is_contiguous(fun(2,3)))

contains
function fun(d1,d2)
integer :: d1,d2,fun(5,7,6)

fun = d1+d2
end function

subroutine ss(dd)
logical :: dd
if(dd .eqv. .true.) print*,'pass'
end subroutine
end
