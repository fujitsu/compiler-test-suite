integer,allocatable :: trg(:)

allocate(trg(10))
trg = 3

call sub(trg)

contains
subroutine sub(dptr)
integer::dptr(:)
logical :: ll 
ll = is_contiguous(dptr)
if(ll) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
