integer :: trg(5,5,5,4)=9
call sub(trg)

contains
subroutine sub(ptr)
integer,contiguous :: ptr(:,:,:,:)
logical :: ll1 = is_contiguous(trg)

if(ll1 .neqv. .true.) print*,101,ptr

print*,'pass'
end subroutine
end
