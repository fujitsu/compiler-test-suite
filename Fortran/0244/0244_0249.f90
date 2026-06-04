interface
function fun2(dd,dd2)
character(len=4), contiguous,pointer :: fun2(:)
character(len=4) :: dd,dd2
end function

function fun(dd)
character(len=4), contiguous, pointer :: fun(:)
character(len=4) :: dd
end function
end interface


if(is_contiguous(fun('abcd')) .and. all(fun('abcd') .eq. 'abcd')) print*,'pass'

end

function fun2(dd,dd2)
character(len=4), contiguous,pointer :: fun2(:)
character(len=4) :: dd,dd2
character(len=4), contiguous, pointer :: fun(:)
allocate(fun2(6))
fun2=dd2
print*,dd2
entry fun(dd)
allocate(fun(6))
fun=dd
end function
