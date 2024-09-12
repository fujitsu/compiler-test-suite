program main
 type zero
   integer :: x
   integer :: y
 end type

 type one
   integer(kind = 8) :: a = 1
   integer(kind = 8) :: b = 2
 end type
 
 type,extends(one) :: two
   character(len = 4) :: c = "abc"
   real(kind = 4) :: arr(5) = (/4,4,4,4,4/)
 end type

 type, extends(two) :: three
   type(zero) :: z = zero(5,6)
   integer(kind = 8) :: e(3,3) = 7
 end type

 type(three) :: t = three(two(1,2,"2003",4), e = 700) 

 print *, t

end
