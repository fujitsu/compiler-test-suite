call ss(fun(3))
if(.not.is_contiguous(fun(3)))print*,101

contains
function fun(a)
integer :: a
character(len=a) :: fun(a)
fun='abc'
end function

subroutine ss(dd)
character(len=3) :: dd(3)
if(all(dd=='abc')) print*,'pass'
end subroutine
end
