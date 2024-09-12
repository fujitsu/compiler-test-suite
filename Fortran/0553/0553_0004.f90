program main

 type one 
  integer(kind = 4) :: x
  integer(kind = 4) :: y
 end type

 type(one), parameter :: cnst = one(8,9)
 type two
  integer(kind = 4) :: a = 1
  character(len = 12) :: b = "Abcdefg"
  integer :: c(5) = (/(i, i = 3,7)/) 
  type(one) :: on  = cnst 
  real(kind = 4) :: e(3,3) = RESHAPE((/10,11,12,13,14,15,16,17,18/),(/3,3/)) 
 end type

 type(two) :: t = two() 

 print*,t

end 
