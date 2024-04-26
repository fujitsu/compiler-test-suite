integer :: arr(9,8,5)=2
integer :: i=2,j=8

if(is_contiguous(arr(:,i:j,3)) .eqv. .true.) then
 print*,'pass'
else
 print*,101
endif
end
