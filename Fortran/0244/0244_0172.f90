character(len=4),allocatable :: trg(:)

allocate(trg(10))
trg = 'abcd'

call sub(trg(2:6))

contains
subroutine sub(dptr)
character(len=4)::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
