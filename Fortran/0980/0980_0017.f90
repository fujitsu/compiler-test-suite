module mod
  integer, protected  :: iii
end module

use mod

INTEGER A(10)
A = 99
INQUIRE ( IOLENGTH = iolength )(A(iii),iii=1,5)

print *,iolength

end
