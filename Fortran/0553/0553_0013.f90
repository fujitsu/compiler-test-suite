program main
 type two 
   integer, pointer :: a
   real :: b
   integer :: c(5)               
   real :: e(3,3)
 end type

 type(two) :: t = two(NULL(),3,4,5)

 print *, associated(t%a)
 print *,t%b
 print *,t%c
 print *,t%e

end 
