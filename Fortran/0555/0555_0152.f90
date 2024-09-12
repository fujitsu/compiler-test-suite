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

interface
  function fun()
    import drv1
    class(drv1),POINTER::fun(:)
  end function
end interface

class(drv1),POINTER :: obj_drv1(:)
class(drv2),ALLOCATABLE :: obj_drv2(:)

obj_drv1=>fun()
ALLOCATE(drv2::obj_drv2(2))
obj_drv1%ii = 10
obj_drv1(1)%ii = 20
obj_drv2%ii = 30
obj_drv2(2)%ii = 40
call sub(obj_drv1,obj_drv2)
contains
  subroutine sub(dum1,dum2)
    class(drv1),TARGET:: dum1(:)
    type(drv2):: dum2(:)
    LOGICAL::x

    x=SAME_TYPE_AS(dum1,dum2)
    if (dum1(1) % ii /=20) then 
      print *,111
    else if (dum2(2) %ii /=40) then 
      print *,112
    else if(x .eqv. .false.) then
      print*,113
    else
      print *,'pass'
    endif
  end subroutine sub

end

function fun()
  use module_2
  class(drv1),POINTER::fun(:)
  type(drv2),TARGET,save::tar(3)
  tar%ii=2
  fun=>tar
end function

