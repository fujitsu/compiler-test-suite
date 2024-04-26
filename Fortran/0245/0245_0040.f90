character(len=3) :: act(10,10,10,4)='abc'
call sub(act)

contains
subroutine sub(trg)
character(len=*) :: trg(10,10,10,4)

logical :: ll11 = is_contiguous(trg)

if(ll11 .neqv. .true.) print*,101
print*,'pass'
end subroutine
end
