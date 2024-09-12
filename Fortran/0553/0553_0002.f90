program main

 type one 
  integer(kind = 4) :: x
  integer(kind = 4) :: y
 end type

 type two
  integer(kind = 4) :: a = 1
  character(len = 12) :: b = "FORTRAN"
  integer(kind = 4) :: c(5) = 3
  type(one) :: on  
  real(kind = 4) :: e(3,3) = 6.00_4
 end type

 type(two) :: t = two(on = one(4,5), c = (/10,10,10,10,10/)) 

 print*,t

end 
