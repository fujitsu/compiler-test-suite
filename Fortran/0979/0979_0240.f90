module mod01
implicit none
  character(len=1),protected :: x,y,z
  namelist /mylist/ x,y,z 
contains
  subroutine sub01()
    character(len=1) :: filename = 'abc'
    return
    read (UNIT=filename, NML=mylist)
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
