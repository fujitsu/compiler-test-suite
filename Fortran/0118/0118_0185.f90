module mod
contains
subroutine sub(ptr)
integer,pointer, dimension (:,:)::ptr
logical:: flag
flag = is_contiguous(ptr)
print *,flag
end subroutine
end 

use mod
integer,target, dimension (5,5) ::target
integer,pointer, dimension (:,:)::ptr
ptr=>target
call sub(ptr)
ptr=>target(1:5:2,1:5:2)
call sub(ptr)
ptr=>target(1:5:1,1:5:2)
call sub(ptr)
ptr=>target(1:5:2,1:5:1)
call sub(ptr)
ptr=>target(1:5:1,1:5:1)
call sub(ptr)
end
