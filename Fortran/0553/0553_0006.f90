program main
 type zero
   integer(kind = 4) :: x
   integer(kind = 4) :: y
 end type

 type one
   integer(kind = 8) :: a
   integer(kind = 8) :: b
 end type
 
 type,extends(one) :: two
   character(len = 4) :: c
   real(kind = 4) :: arr(5)
 end type

 type, extends(two) :: three
   type(zero) :: z
   integer(kind = 8) :: e(3,3)
 end type

 type(three) :: t = three(1,2,'a',4.0,zero(5,6),7) 

 print *, t

end
