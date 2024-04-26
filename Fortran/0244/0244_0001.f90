integer::i=1
integer,target :: trg(10)

trg=2
trg(2:6) = 3

call ss(trg(2:6:i))

contains
subroutine ss(aptr)
integer,contiguous::aptr(:)

call sub(aptr)
call sub(aptr([2,3,4,5,6]))
end subroutine

subroutine sub(dptr)
integer::dptr(5)
 print*,'pass'
 if(all(dptr==0))print*,101
end subroutine
end
