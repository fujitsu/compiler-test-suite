integer,allocatable :: trg(:,:,:)
integer::i=2

allocate(trg(2,1:5,6))
trg = 3

call sub(trg)

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,i-1:1+1+20-17,i:4:1)) .eqv. .true.) then
 print*,'pass'
else
 print*,is_contiguous(dptr(:,i-1:1+1+20-17,i:4:1)),101
endif
end subroutine
end
