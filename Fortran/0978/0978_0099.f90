module mod
type str
character(256) :: command
integer :: length
integer :: status
end type
type(str) :: sss
end module

use mod,s=>sss
call get_command(s%command)
write(1,*)s%command
print *,'pass'
end
