module m1
contains
 subroutine sub(a)
   integer,allocatable,dimension(:),intent(out)::a
   if(ALLOCATED(a))print *,'error-1'
 end subroutine
end
use m1
 integer,allocatable,dimension(:)::a
   if(ALLOCATED(a))print *,'error-0'
 call sub(a)
   if(ALLOCATED(a))print *,'error-00'
 allocate(a(2))
 call sub(a)
   if(ALLOCATED(a))print *,'error-2'
 call sub(a)
   if(ALLOCATED(a))print *,'error-3'
print *,'pass'
end
