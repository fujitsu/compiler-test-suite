integer,allocatable,target :: trg(:)
integer,pointer :: ptr(:)

allocate(trg(10))
trg = 3

ptr=>trg
if(is_contiguous(ptr(2:6)))  print*,'pass'

end
