module mod01
  character(len=1) :: x
  character(len=1),protected  :: y
  character(len=1) :: z
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
