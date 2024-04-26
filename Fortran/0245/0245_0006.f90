type tt
integer,pointer, contiguous :: cptr(:,:,:)
end type

type(tt) :: obj

integer,target :: tgt(8,8,8)=2

obj%cptr => tgt

call sub(tgt(:,2:4,3))
call sub(obj%cptr(:,2:4,3))

print*,'pass'

contains
subroutine sub(ptr2)
integer, contiguous :: ptr2(:,:)
if(all(ptr2 /= 2)) print*,101
end subroutine
end
