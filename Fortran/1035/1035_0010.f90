module m1
contains
 subroutine sub(a,i)
   integer,optional,allocatable,dimension(:),intent(out)::a
   if (i==0) then
      if (present(a))print *,'error-a'
   else 
     if (.not.present(a))print *,'error-b'
     if(ALLOCATED(a))print *,'error-10'
   endif
 end subroutine
end
use m1
 integer,allocatable,dimension(:)::a
   if(ALLOCATED(a))print *,'error-0'
 call sub(a,1)
   if(ALLOCATED(a))print *,'error-1'
 allocate(a(2))
 call sub(a,1)
   if(ALLOCATED(a))print *,'error-2'
 call sub(a,1)
   if(ALLOCATED(a))print *,'error-3'
 call sub(i=0)
print *,'pass'
end
