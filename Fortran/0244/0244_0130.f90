call ss(fun())
if(.not.is_contiguous(fun()))print*,101

contains
function fun()
integer :: fun(5)
fun=2
end function

subroutine ss(dd)
integer :: dd(5)
if(all(dd==2)) print*,'pass'
end subroutine
end
