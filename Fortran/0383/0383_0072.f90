module mod
type parent
  integer :: iii = 0
end type
type,extends(parent) :: child
  integer :: jjj = 0
end type 
end module

function func01() result(ret)
  use mod
  type(parent) :: ret
  ret%iii = 100
end function

function func02() result(ret)
  use mod
  type(child) :: ret
  ret%jjj = 200
end function

subroutine proc01(arg1)
  use mod
  procedure(type(parent)),pointer :: arg1
  type(parent) :: local
  local = arg1()
  if (100 .ne. local%iii) print *,'fail'
end subroutine

subroutine proc02(arg1)
  use mod
  procedure(type(child)),pointer :: arg1
  type(child) :: local
  local = arg1()
  if (0 .ne. local%iii) print *,'fail'
  if (200 .ne. local%jjj) print *,'fail'
end subroutine

use mod
interface
subroutine proc01(arg1)
  use mod
  procedure(type(parent)),pointer :: arg1
end subroutine
subroutine proc02(arg1)
  use mod
  procedure(type(child)),pointer :: arg1
end subroutine
function func01() result(ret)
  use mod
  type(parent) :: ret
end function
function func02() result(ret)
  use mod
  type(child) :: ret
end function
end interface
procedure(type(parent)),pointer :: ppp
procedure(type(child)),pointer :: qqq
ppp=>func01
qqq=>func02
call proc01(ppp)
call proc02(qqq)
print *,'ok'
end
