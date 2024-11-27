module mod
  character(len=1) :: x
  character(len=1)            :: y
  character(len=1) :: z

  namelist /mylist/ x,y,z 
end module

use mod
character(len=1) :: filename = 'abc'

print *,'pass'
stop

read (UNIT=filename, NML=mylist)

end
