character(len=3) :: trg(10)

trg = 'abc'

call sub(trg)

contains
subroutine sub(dptr)
character(len=3)::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
