module mod
contains
subroutine sub(ptr,n1,n2)
integer,target, dimension (5,5) ::target
integer,pointer, dimension (:,:)::ptr
logical:: flag
ptr=>target(1:5:n1,1:5:n2)
flag = is_contiguous(ptr) 
print *,flag
end subroutine
end 

use mod
integer,pointer, dimension (:,:)::ptr
call sub(ptr,-1,-1)
call sub(ptr,2,2)
call sub(ptr,1,2)
call sub(ptr,2,1)
call sub(ptr,1,1)
end
