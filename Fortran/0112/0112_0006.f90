module m
 type t
   integer t1
 end type
 interface assignment(=)
   module procedure sub
 end interface
 contains
   subroutine sub(a,b)
   type(t),intent(out)::a
   type(t),intent(in):: b 
   a%t1 = b%t1
   end subroutine
end module

use m
type(t)::a(3)
a(1)%t1=1; a(2)%t1=2; a(3)%t1=3
forall(i=2:3)
  a(i)%t1=a(i-1)%t1
end forall
if(a(1)%t1 .ne. 1)print*,'ng'
if(a(1)%t1 .ne. 1)print*,'ng'
if(a(1)%t1 .ne. 1)print*,'ng'
print*,'pass'
end
