character(kind=4, len=3),pointer,contiguous::aptr(:,:,:)
integer::i=1
character(kind=4, len=3),target :: trg(10,10,10)=4_'abc'

trg=4_'abc'
trg(:,:,2:6) = 4_'cde'

aptr=>trg(:,:,2:6:i)

call sub(aptr)

contains
subroutine sub(dptr)
character(len=3,kind=4)::dptr(:,:,:)
if(is_contiguous(dptr(2,:,:)) .eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
