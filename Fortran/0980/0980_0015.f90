module mod
  integer, protected  :: iii
end module

use mod

INTEGER A(10)
read(6,*)(A(iii),iii=1,5)

print *,A

end
