integer,pointer,contiguous::aptr(:,:,:)
integer::i=1
integer,target :: trg(10,10,10)

trg=2
trg(:,:,2:6) = 3

aptr=>trg(:,:,2:6:i)

call sub(aptr)

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(2,:,:)) .eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
