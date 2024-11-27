module mod01
implicit none
  character(len=8),protected :: filename
contains
  subroutine sub01()
    integer :: x=1,y=1,z=1
    return

    write (UNIT=filename, *) x,y,z
    read (UNIT=filename,*) x
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
