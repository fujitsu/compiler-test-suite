character(len=1),contiguous,pointer::arr(:)
allocate(arr(7))

call sub(arr)
contains
subroutine sub(dmy)
character(len=1),contiguous::dmy(:)
if(is_contiguous(dmy)) print*,'pass'
end subroutine
end
