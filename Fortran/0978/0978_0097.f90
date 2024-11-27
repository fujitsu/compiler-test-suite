module mod
character(256) :: command
integer :: length
integer :: status
end module

use mod,c=>command,l=>length,s=>status
call get_command(c,l,s)
write(1,*)trim(c)
write(1,*)l
write(1,*)s
print *,'pass'
end
