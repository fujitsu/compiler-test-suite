program main
 type two 
   integer, allocatable :: a(:) 
   real :: b = 10 
   integer :: c(5) = 15                
   real :: e(3,3) = 20 
 end type

 type(two) :: t = two(a= NULL())

 print *, allocated(t%a)
 print *,t%b
 print *,t%c
 print *,t%e

end 
