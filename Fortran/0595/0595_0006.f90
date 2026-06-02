   integer::k(1)=[3]
   integer::b
   integer::a
   b=get_val(k)
   if(b .ne. kind(kind(a)))print*,"100"
   print*,"PASS"
contains
function get_val(k)
   implicit none
   integer::k(..)
   integer::get_val
   get_val=kind(rank(k))
   call sub(k)
end function
 subroutine sub(k)
   integer::k(..)
   integer,pointer::ptr(:,:)
   integer,allocatable::ptr2(:,:)
   allocate(ptr(2,2))
   allocate(ptr2(2,2))
   if (kind(rank(k)).ne. kind(kind(k)))print*,"102"
   if (kind(rank(ptr)).ne.kind(kind(k)))print*,"103"
   if (kind(rank(ptr2)).ne. kind(kind(k)))print*,"104"
 end
end 



