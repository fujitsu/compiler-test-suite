type tt
 integer :: ii
 integer,pointer :: ptr(:)
end type

type(tt) :: obj(3)
integer,target ::tgt(8) = 8

do i=1,3
 obj(i)%ptr=>tgt
end do

if(is_contiguous(obj) .neqv. .true.) print*,101
if(is_contiguous(obj(1)%ptr) .eqv. .true.) print*,'pass'
end
