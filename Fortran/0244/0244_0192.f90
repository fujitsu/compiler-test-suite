integer :: trg(10,10,10)

trg = 3

call sub(trg)

contains
subroutine sub(dptr)
integer::dptr(3,5,*)
if(is_contiguous(dptr(:,:,2))) print*,'pass'
end subroutine
end
