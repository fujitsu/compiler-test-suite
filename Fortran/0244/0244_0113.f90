integer :: arr(8,5)=2

logical :: ll = is_contiguous(arr(2:4,3)) 
if(ll .eqv. .true.) then
 print*,'pass'
else
 print*,101
endif
end
