program main
 type one
  integer ,pointer :: a => NULL()
  integer :: b = 2
 end type

 type,extends(one):: two
  procedure(), pointer,nopass :: c =>NULL()
  real :: arr(5) = (/4,4,4,4,4/)
 end type
 
 type,extends(two):: three
  integer :: e(3,3) = RESHAPE((/10,11,12,13,14,15,16,17,18/),(/3,3/))
 end type

 type(three) :: t = three(a = NULL(),arr= (/(i, i = 3,7)/)) 

 print *, associated(t%a)
 print *, t%b
 print *, associated(t%c)
 print *, t%arr
 print *, t%e
end
