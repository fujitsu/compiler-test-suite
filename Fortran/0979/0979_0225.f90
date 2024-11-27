module mod
  integer  :: iii
end module

use mod

  integer a(10)

  print *,'pass'
  stop

  a = 99
  print *,(A(iii),iii=1,5)
end
