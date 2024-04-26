integer::i=1
integer,target :: trg(10)

trg=2
trg(2:6) = 3

call ss(trg(2:6:i))

contains
subroutine ss(aptr)
integer,contiguous::aptr(:)

if( sub(aptr) /=1) print*,'fail'
if( sub(aptr([2,3,4,5,6])) /=1) print*,'fail'
end subroutine

function sub(dptr)
integer::dptr(5),sub
 print*,'pass'
 if(all(dptr==0))print*,101
sub=1
endfunction
end
