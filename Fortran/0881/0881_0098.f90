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

type con
  class(drv2),pointer:: act 
  class(drv2),pointer:: actual 
end type con

type(con), target:: obj
class(drv1), pointer ::obj_drv

allocate(obj_drv)
allocate(obj%actual)
allocate(obj%act)
obj%actual%tt=18
obj%act%tt=20
obj_drv%tt=30
x=SAME_TYPE_AS ((/obj%act,obj%actual/),obj_drv)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail' 
endif
end program 
