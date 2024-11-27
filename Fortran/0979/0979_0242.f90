module mod01
implicit none
  character(len=8),protected :: filename
contains
  subroutine sub01()
    character(len=8) :: xxx
    return

    write (UNIT=filename, '(I5)') xxx
    read (UNIT=filename,*) xxx
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
