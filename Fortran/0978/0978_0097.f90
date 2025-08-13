module mod
character(256) :: command
integer :: length
integer :: status
end module

use mod,c=>command,l=>length,s=>status
call get_command(c,l,s)
write(37,*)trim(c)
write(37,*)l
write(37,*)s
print *,'pass'
end
