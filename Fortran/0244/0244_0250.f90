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


associate(aa=>fun('abcd'))
 if(is_contiguous(aa(2:))) print*,'pass'
end associate

end

function fun2(dd,dd2)
character(len=4), contiguous,pointer :: fun2(:)
character(len=4) :: dd,dd2
character(len=4), contiguous, pointer :: fun(:)
fun2=dd2
print*,dd2

entry fun(dd)
allocate(fun(6))
fun=dd
end function
