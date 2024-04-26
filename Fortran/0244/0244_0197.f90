integer,pointer::aptr(:)
integer,target :: trg(10)=2
aptr=>trg(2:6)

call sub(trg(2:6))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:)
integer,pointer::ptr(:)

ptr=>dptr
if(is_contiguous(ptr(1:5))) print*,'pass'
end subroutine
end
