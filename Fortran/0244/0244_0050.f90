if(is_contiguous(fun(2,3))) print*,'pass'

contains
function fun(d1,d2)
integer :: d1,d2
integer,pointer :: fun(:,:,:)

allocate(fun(4,4,4))

fun = d1+d2
end function
end
