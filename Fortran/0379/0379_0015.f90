module mod
  enum,bind(C)
    enumerator :: iii = 100
  end enum
end module

use mod,only:jjj=>iii
integer,parameter :: pii = 100
if ( pii .eq. jjj) print *,'ok'
end
