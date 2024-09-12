program main

 type one 
  integer(kind = 4) :: x
  integer(kind = 4) :: y
 end type

 type(one), parameter :: cnst = one(8,9)
 type two
  integer(kind = 4) :: a = 1
  character(len = 12) :: b = "Abcdefg"
  integer(kind = 4) :: c(5) = (/3,4,5,6,7/) 
  type(one) :: on  = cnst 
  real(kind = 4) :: e(3,3) = 8 
 end type

 type(two) :: t = two(o'100',"FORTRAN",e = 100) 

 print*,t

end 
