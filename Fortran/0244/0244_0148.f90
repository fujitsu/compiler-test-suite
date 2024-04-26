integer,allocatable :: trg(:,:,:)
integer::i=2

allocate(trg(10,8,10))
trg = 3

call sub(trg)

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,:,i:6:1))) print*,'pass'
end subroutine
end
