character(len=4),allocatable :: trg(:,:,:,:)
integer::i=2

allocate(trg(10,1:1,8,10))
trg = 'gogo'

call sub(trg)

contains
subroutine sub(dptr)
character(len=4)::dptr(:,:,:,:)
if(is_contiguous(dptr(:,i-1:1+1+20-21,:,i:6:1)) .eqv. .true.) then
 print*,'pass'
else
 print*,is_contiguous(dptr(:,i-1:1+1+20-21,:,i:6:1)),101
endif
end subroutine
end
