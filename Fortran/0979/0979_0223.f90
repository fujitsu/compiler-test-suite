module mod
  integer  :: iii
end module

use mod

  integer a(10)
  a=1

  print *,'pass'
  stop
  write(6,*)(a(iii),iii=1,5)
end
