integer,contiguous,pointer::arr(:)
allocate(arr(7))

call sub(arr)
contains
subroutine sub(dmy)
integer,contiguous::dmy(:)
if(is_contiguous(dmy)) print*,'pass'
end subroutine
end
