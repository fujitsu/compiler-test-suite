integer :: trg(10,10,10)

trg = 3

call sub(trg,7)

contains
subroutine sub(dptr,n)
integer::dptr(n,n,n)
if(is_contiguous(dptr(:,:,:))) print*,'pass'
end subroutine
end
