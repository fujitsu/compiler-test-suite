integer :: arr1(4) = 2,arr2(4) = 3

do i=1,3
 if(is_contiguous((arr1 + arr2 + [2,3,i,5] + ff(i)))) print*,'pass',i,'/3'
end do

contains
function ff(dd)
integer :: dd, ff(4)
ff = dd
end function
end
