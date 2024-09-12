program main
 type two 
   integer, pointer :: a => NULL()
   real :: b = 2.0
   integer :: c(5) = (/3,4,5,6,7/)                
   real :: e(3,3) =  8
 end type

 type(two) :: t = two(b= 345)

 print *, associated(t%a)
 print *,t%b
 print *,t%c
 print *,t%e

end 
