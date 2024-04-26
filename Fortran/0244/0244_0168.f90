character(len=:),pointer::aptr(:)
character(len=3),target :: trg(10)='abc'
aptr=>trg(2:6)

call sub(trg(2:6))

contains
subroutine sub(dptr)
character(len=3),contiguous::dptr(:)

call sub2(dptr(1:5))
end subroutine

subroutine sub2(dd)
character(len=3)::dd(:)
if(is_contiguous(dd)) print*,'pass'
if(is_contiguous(dd(:)(:)) .neqv. .true.) print*,101
if(is_contiguous(dd(:)(2:3)) .neqv. .false.) print*,102
end subroutine
end
