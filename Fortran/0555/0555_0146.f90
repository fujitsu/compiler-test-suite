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

program main
use module_2
  character(len = :),ALLOCATABLE::str
  allocate(CHARACTER(LEN=30)::str)
  str='String1'
  call sub(str)
  contains
    subroutine sub(dum)
      class(*)::dum
      TYPE(drv2) :: var_drv2
      LOGICAL x
      x = SAME_TYPE_AS(dum , var_drv2)
      if(x .eqv. .false.) then
        print*,'pass'
      else
        print*,111
      endif
    end subroutine
end
