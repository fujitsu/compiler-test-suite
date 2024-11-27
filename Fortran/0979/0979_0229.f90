module mod
  character(len=8) :: filename
end module

use mod

character(len=8) :: xxx

print *,'pass'
stop

write (UNIT=filename, '(I5)') xxx
read (UNIT=filename,*) xxx

end
