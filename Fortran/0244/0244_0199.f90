integer,allocatable,target :: trg(:)
integer,pointer::ptr(:)

allocate(trg(10))
trg = 3

ptr=>trg
if(is_contiguous(ptr)) print*,'pass',is_contiguous(ptr)

end
