program main
 type one
  integer ,pointer :: a
  integer :: b
 end type

 type,extends(one):: two
  procedure(), pointer, nopass  :: c
  real :: arr(5)
 end type
 
 type,extends(two):: three
  integer :: e(3,3)
 end type

 type(three) :: t = three(NULL(),2,NULL(),4.0,7) 

 print *, associated(t%a)
 print *, t%b
 print *, associated(t%c)
 print *, t%arr
 print *, t%e
end
