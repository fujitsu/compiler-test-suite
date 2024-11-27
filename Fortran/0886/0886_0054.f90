integer,pointer,contiguous :: arr(:)
allocate(arr(5))
print*, sub(arr)

contains
function sub(dd)
integer,pointer,contiguous :: dd(:)
integer :: sub
logical :: ll = is_contiguous(dd)
if(ll .eqv. .true.) print*,'pass'
endfunction
end
