integer,pointer,contiguous::aptr(:)
integer::i=1
integer,target :: trg(10)

trg=2
trg(2:6) = 3

aptr=>trg(2:6:i)

call sub(aptr)

contains
subroutine sub(dptr)
integer::dptr(:)
logical :: ll 
ll = is_contiguous(dptr) .and. .true.
if(ll) print*,'pass'
end subroutine
end
