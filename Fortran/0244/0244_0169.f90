character(len=:),pointer,contiguous::aptr(:)
integer::i=1
character(len=3),target :: trg(10)

trg='xxx'
trg(2:6) = 'abc'

aptr=>trg(2:6:i)

call sub(aptr)

contains
subroutine sub(dptr)
character(len=3)::dptr(:)
if(is_contiguous(dptr)) print*,'pass'
end subroutine
end
