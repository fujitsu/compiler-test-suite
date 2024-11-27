module mod
  character(len=1) :: x,y,z
  namelist /mylist/ x,y,z 
end module

use mod
character(len=1) :: filename = 'abc'

print *,'pass'
stop

read (UNIT=filename, NML=mylist)

end
