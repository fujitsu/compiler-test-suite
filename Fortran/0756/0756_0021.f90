program main
type drv1 
  integer :: tt  = 0 
end type

type,extends(drv1):: drv2
  integer :: ss  = 0
end type

type con
  class(drv2),pointer:: actual => NULL()
end type con

contains
  subroutine sub()
    TYPE(drv2) :: var_drv2
  end subroutine sub
end program 
