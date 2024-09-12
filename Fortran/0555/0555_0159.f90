program main
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

type con1
  class(drv2),pointer:: act1
  class(drv2),pointer:: actual1
end type con1

type(con):: obj

allocate(obj%act)
allocate(obj%actual)
obj%act%tt=18
obj%actual%tt=20
call sub (con1(obj%act,obj%actual))
contains
  subroutine sub(dummy)
    class(con1) ::dummy
    if(dummy%act1%tt /=18) then
      print*,111
    elseif(dummy%actual1%tt /=20) then
      print*,112
    else
      print*,'pass'
    endif
  end subroutine sub
end program 
