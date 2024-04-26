integer,pointer,contiguous::aptr(:)
integer,pointer::aptr2(:)
integer,target :: trg(10)

trg=2
trg(2:6) = 3

aptr=>trg(2:6)
aptr2 => aptr

call sub(aptr2)

contains
subroutine sub(dptr)
integer::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
