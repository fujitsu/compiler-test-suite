module mod
  character(len=8) :: filename
end module

use mod

integer :: x=1,y=1,z=1

print *,'pass'
stop

write (UNIT=filename, *) x,y,z
read (UNIT=filename,*) x

end
