program main
 type one
  integer :: b = 2
  integer ,allocatable :: a(:) 
 end type

 type,extends(one):: two
  real :: c = 3
  real :: arr(5) = (/4,4,4,4,4/)
 end type
 
 type,extends(two):: three
  integer :: e(3,3) = RESHAPE((/10,11,12,13,14,15,16,17,18/),(/3,3/))
 end type

 type(three) :: t = three(a = NULL()) 

 print *, allocated(t%a)
 print *, t%b
 print *, t%c
 print *, t%arr
 print *, t%e
end
