if(is_contiguous(fun())) print*,'pass'

contains
function fun()
integer, contiguous, pointer :: fun(:)
allocate(fun(6))
fun=3
end function
end
