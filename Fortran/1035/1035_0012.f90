module m1
 type t
   integer i
   integer,allocatable,dimension(:)::j
 end type
contains
 subroutine sub(i,a)
   type(t),optional,allocatable,dimension(:),intent(out)::a
   if (i==0) then
     if (present(a))print *,'ERROR-101'
   else
     if (.not.present(a))print *,'ERROR-102'
     if(ALLOCATED(a))print *,'error-1'
   endif
 end subroutine
end
use m1
 type(t),allocatable,dimension(:)::a
   if(ALLOCATED(a))print *,'error-0'
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-00'
 allocate(a(2))
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-2'
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-3'
 allocate(a(2))
 allocate(a(1)%j(2))
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-4'
 allocate(a(2))
 allocate(a(2)%j(2))
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-5'
 allocate(a(2))
 allocate(a(1)%j(2))
 allocate(a(2)%j(2))
 call sub(1,a)
   if(ALLOCATED(a))print *,'error-6'
 call sub(0)
print *,'pass'
end
