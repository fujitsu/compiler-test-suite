module mod
  integer, protected  :: iii,hhh
end module

use mod

INTEGER A(10)
A = 99
INQUIRE ( IOLENGTH = iolength )((A(iii),iii=1,5),hhh=1,5)

print *,iolength

end
