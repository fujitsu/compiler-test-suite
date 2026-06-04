interface
function fun2()
integer, contiguous,pointer :: fun2(:)
end function

function fun()
integer, contiguous, pointer :: fun(:)
end function
end interface

if(is_contiguous(fun())) print*,'pass'

end

function fun2()
integer, contiguous,pointer :: fun2(:)

entry fun()
integer, contiguous, pointer :: fun(:)
allocate(fun(6))
fun=3
end function
