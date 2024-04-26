integer :: trg(10)

trg = 3

call sub(trg)

contains
subroutine sub(dptr)
integer::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
