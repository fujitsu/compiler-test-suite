print*,fun()

contains
function fun()
character(len=4) :: fun(:)
pointer :: fun
contiguous :: fun

allocate(fun(1))
fun='pass'
end function
end
