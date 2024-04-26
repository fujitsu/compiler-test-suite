if(is_contiguous(fun())) print*,'pass'

contains
function fun()
character(len=:), contiguous, pointer :: fun(:)
allocate(character(len=3)::fun(6))
fun='abc'
end function
end
