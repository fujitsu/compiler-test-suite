character(len=4),allocatable :: trg(:,:,:,:)
integer::i=2

allocate(trg(10,10,8,10))
trg = 'ghjk'

call sub(trg)

contains
subroutine sub(dptr)
character(len=4)::dptr(:,:,:,:)
if(is_contiguous(dptr(:,i-1:,:,i-1:10:1))) print*,'pass'
if(is_contiguous(dptr(:,i+1-1:i+2,:,i+1-1:6:1)) .neqv. .false. ) print*,101
end subroutine
end
