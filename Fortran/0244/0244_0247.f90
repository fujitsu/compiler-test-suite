interface
function fun2()
integer, contiguous,pointer :: fun2(:,:,:)
end function

function fun()
integer, contiguous, pointer :: fun(:,:,:)
end function
end interface


associate(aa=>fun())
 if(is_contiguous(aa(:,2:,:)) .eqv. .false.) then
  print*,'pass'
 else
  print*,101
 end if
end associate

end

function fun2()
integer, contiguous,pointer :: fun2(:,:,:)

entry fun()
integer, contiguous, pointer :: fun(:,:,:)
allocate(fun(6,7,8))
fun=3
end function
