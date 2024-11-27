program main
LOGICAL::x
type drv1 
  integer :: tt 
  integer :: pp
end type

type,extends(drv1):: drv2
  integer :: ss 
  integer :: dd
end type

class(drv1),ALLOCATABLE::obj_drv1

allocate(obj_drv1)
obj_drv1%tt=10
x=SAME_TYPE_AS (drv2(2,3,4,5),obj_drv1)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail' 
endif
end program 
