module m1
 type t
   integer i
   integer,allocatable,dimension(:)::j
 end type
contains
 subroutine sub(a)
   type(t),allocatable,dimension(:),intent(out)::a
   if(ALLOCATED(a))print *,'error-1'
 end subroutine
end
use m1
 type(t),allocatable,dimension(:)::a
   if(ALLOCATED(a))print *,'error-0'
 call sub(a)
   if(ALLOCATED(a))print *,'error-00'
 allocate(a(2))
 call sub(a)
   if(ALLOCATED(a))print *,'error-2'
 call sub(a)
   if(ALLOCATED(a))print *,'error-3'
 allocate(a(2))
 allocate(a(1)%j(2))
 call sub(a)
   if(ALLOCATED(a))print *,'error-4'
 allocate(a(2))
 allocate(a(2)%j(2))
 call sub(a)
   if(ALLOCATED(a))print *,'error-5'
 allocate(a(2))
 allocate(a(1)%j(2))
 allocate(a(2)%j(2))
 call sub(a)
   if(ALLOCATED(a))print *,'error-6'
print *,'pass'
end
