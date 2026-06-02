program main
implicit none
   integer::k(5)=[1,2,3,4,5]
   integer::b
   integer::a
   b=get_val(k)
   if(b .ne. kind(kind(a)))print*,"100"
   if(kind(kind(a)).ne. kind(rank(k)))print*,"102"
   print*,"PASS"

contains
function get_val(k)
   implicit none
   integer::k(..)
   integer::get_val
   get_val=kind(rank(k))
end function get_val
end program main



