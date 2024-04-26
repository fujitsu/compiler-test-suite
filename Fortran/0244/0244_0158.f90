integer,allocatable :: trg(:,:,:)

interface
subroutine sub(dptr)
integer::dptr(:,:,:)
end subroutine
end interface

allocate(trg(10,8,10))
trg = 3

call sub(trg)
end

subroutine sub(dptr)
integer::dptr(:,:,:)
integer::i=2
if(is_contiguous(dptr(:,:,i:6:1))) print*,'pass'
end subroutine
