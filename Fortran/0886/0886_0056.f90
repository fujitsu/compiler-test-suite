
character(len=3),allocatable :: act(:,:,:,:)
allocate(character(len=3) :: act(10,10,10,4))
act='abc'
call sub(act)

contains
subroutine sub(trg)
character(len=3),allocatable :: trg(:,:,:,:)

integer :: i=len(trg)
logical :: ll11 = is_contiguous(trg)

if(ll11 .neqv. .true.) print*,101
print*,'pass'
end subroutine
end
