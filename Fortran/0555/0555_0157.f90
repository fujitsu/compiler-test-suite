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
  class(drv2),pointer:: actual => NULL()
end type con

type(con):: obj

allocate(obj%actual)
allocate(obj%act)
obj%actual%tt=18
obj%act%tt=20
call sub ((/obj%act,obj%actual/))
contains
  subroutine sub(dummy)
    class(*) ::dummy(:)
    TYPE(drv2) :: var_drv2
    LOGICAL :: x
    x = SAME_TYPE_AS(var_drv2, dummy)
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,111
    endif
  end subroutine sub
end program 
