module mod
character(256) :: command
integer :: length
integer :: status
end module

use mod,c=>command,l=>length,s=>status
call get_command(c)
write(1,*)trim(c)
print *,'pass'
end
