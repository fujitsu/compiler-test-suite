character(len=5),allocatable :: trg(:,:,:)

allocate(trg(10,7,8))
trg = 'ghjkl'

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
character(len=5)::dptr(:,:,:)
if(is_contiguous(dptr(:,:,1:5:2)) .eqv. .false.) then
 if(is_contiguous(dptr(:,1+1:2*2,:)) .neqv. .false.) print*,101
 print*,'pass'
else
 print*,101
endif
end subroutine
end
