MODULE module_2

implicit none

type drv1
  integer::ii = 0
  real::jj    = 0.0
end type

type,extends(drv1) :: drv2
  real::kk   = 0.0
end type

type,extends(drv2) :: drv3
  type(drv2)::drv2_obj
end type

END MODULE

use module_2
implicit none

type con
  type(drv1)::obj1
  type(drv2)::obj2
end type

class(drv1),POINTER :: obj_drv1(:)
class(drv2),POINTER :: obj_drv2(:)
type (con)::obj

ALLOCATE(obj_drv1(3),SOURCE=obj%obj1)
ALLOCATE(obj_drv2(4),SOURCE=obj%obj2)

obj%obj1%ii=2
obj%obj2%ii=3

obj_drv1%ii = 10
obj_drv1(1)%ii = 20
obj_drv2%ii = 30
obj_drv2(2)%ii = 40
call sub(obj_drv1,obj_drv2)
contains
  subroutine sub(dum1,dum2)
    class(drv1):: dum1(:)
    class(drv1):: dum2(:)
    LOGICAL::x

    x=SAME_TYPE_AS(dum1,dum2)
    if (dum1(1) % ii /=20) then 
      print *,111
    else if (dum2(2) %ii /=40) then 
      print *,112
    else if(x .eqv. .true.) then
      print*,113
    else
      print *,'pass'
    endif
  end subroutine sub
end

