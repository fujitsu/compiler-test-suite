module mod
  integer,protected,save :: from = 100
  integer,protected,save :: to = 10
end module

subroutine sub(iii,jjj) 
  iii = jjj 
end subroutine

use mod
call sub(from,to)
call subsub()
contains 
subroutine subsub()
  if (from/=10)write(6,*) "NG"
  if (to/=10)write(6,*) "NG"
  print *,'pass'
end subroutine
end
