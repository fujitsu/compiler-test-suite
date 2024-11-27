module mod01
implicit none
  integer,protected :: iii
contains
  subroutine sub01()
  integer a(10)
   return
   read(6,*)(A(iii),iii=1,5)
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
