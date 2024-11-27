module mod
  integer :: iii
end module

use mod

  integer a(10)

  print *,'pass'
  stop

  read(6,*)(a(iii),iii=1,5)

  print *,a
end
