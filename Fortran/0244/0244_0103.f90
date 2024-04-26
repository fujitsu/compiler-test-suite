integer :: arr(8,5)

if(is_contiguous(arr(2:4,3)) .eqv. .true.) then
 print*,'pass'
else
 print*,101
endif
end
