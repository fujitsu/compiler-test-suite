program main
LOGICAL::x
type drv1 
  integer :: tt 
  integer :: pp
end type

type,extends(drv1):: Xdrv2
  integer :: ss 
  integer :: dd
end type

type con
  type(drv1),pointer:: act 
  type(drv1),pointer:: actual 
end type con

type(con):: obj
class(drv1),ALLOCATABLE::obj_drv1

allocate(obj%actual)
allocate(obj%act)
allocate(obj_drv1)
obj%actual%tt=18
obj%act%tt=20

obj_drv1%tt=30
x=SAME_TYPE_AS ((/obj%act,obj%actual/),obj_drv1)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail' 
endif
end program 
