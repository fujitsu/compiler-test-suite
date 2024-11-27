module mod
  integer  :: iii
end module

use mod
  integer a(10)
  a = 99

  print *,'pass'
   stop

  inquire ( iolength = iolength )(a(iii),iii=1,5)
  print *,iolength
end
