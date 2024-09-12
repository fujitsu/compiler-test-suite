program main

 type one 
  integer(kind = 4) :: x
  integer(kind = 4) :: y
 end type

 type two
  integer(kind = 4) :: a
  character(len = 12) :: b
  integer(kind = 4) :: c(5)
  type(one) :: on  
  real(kind = 4) :: e(3,3)
 end type

 type(two) :: t = two(1,"abcdefg",3,one(4,5),6)

 print*,t

end 
