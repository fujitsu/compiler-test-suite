program main

type:: drv2
  integer :: ss  = 0
end type

  class(drv2),pointer:: actual => NULL()
print *,'pass'

contains
  subroutine sub()
    TYPE(drv2) :: var_drv2
  end subroutine sub
end program main
