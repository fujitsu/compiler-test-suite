character(len=6),allocatable :: trg(:)

allocate(trg(10))
trg = 'abcdef'

call sub(trg)

contains
subroutine sub(dptr)
character(len=6)::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
