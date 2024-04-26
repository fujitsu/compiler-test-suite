call ss(fun())

contains
function fun()
integer,allocatable :: fun(:)
allocate(fun(5))
fun=2
end function

subroutine ss(dd)
integer :: dd(5)
if(all(dd==2)) print*,'pass'
end subroutine
end
