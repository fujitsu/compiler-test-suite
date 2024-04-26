integer,allocatable :: trg(:,:,:)

allocate(trg(10,7,8))
trg = 3

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,:,1:5:2)) .eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
