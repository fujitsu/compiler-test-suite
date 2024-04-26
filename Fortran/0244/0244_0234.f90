interface
function fun2(dd,dd2)
character(len=4), pointer :: fun2(:,:,:)
character(len=4) :: dd(:,:,:),dd2
end function

function fun(dd)
character(len=4), pointer :: fun(:,:,:)
character(len=4) :: dd(:,:,:)
end function
end interface

integer :: l=1,m=4
character(len=4)::act(4,4,4)
act='abc'

associate(aa=>fun(act))
 if(is_contiguous(aa(:,:,2:)(1:4))) print*,'pass'
 if(is_contiguous(aa(l:,l:m,2:)(l:m)) .neqv. .true.) print*,101
 if(is_contiguous(aa(:,:,2:)(l-1+1:m-1)) .neqv. .false.) print*,102
 if(is_contiguous(aa(:,:,2:)(l-1+1:m-1)) .neqv. .false.) print*,103
end associate

end

function fun2(dd,dd2)
character(len=4), pointer :: fun2(:,:,:)
character(len=4) :: dd(:,:,:),dd2
character(len=4),  pointer :: fun(:,:,:)
fun2=dd2
print*,dd2

entry fun(dd)
allocate(fun(4,4,4))
fun=dd
end function
