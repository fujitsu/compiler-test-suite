program main
type drv1 
  integer :: tt  = 0 
  integer :: pp  = 0 
end type

type,extends(drv1):: drv2
  integer :: ss  = 0 
  integer :: dd  = 0 
end type

type con
  class(drv2),pointer:: act  => NULL()
  class(drv2),pointer:: actual  => NULL()
end type con

type con1
  class(drv2),pointer:: act1   => NULL()
  class(drv2),pointer:: actual1 => NULL()
end type con1

type(con):: obj

allocate(obj%act)
allocate(obj%actual)
obj%act%tt=18
obj%actual%tt=20
call sub (con1(obj%act,obj%actual))
contains
  subroutine sub(dummy)
    class(*) ::dummy
    TYPE(drv2) :: var_drv2
    LOGICAL x
    x = SAME_TYPE_AS(dummy , var_drv2)
    if(x .eqv. .false.) then
      print*,'pass'
    else
      print*,111
    endif
  end subroutine sub
end program 
