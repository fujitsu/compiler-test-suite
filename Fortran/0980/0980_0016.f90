module mod
  integer, protected  :: iii
end module

use mod

INTEGER A(10)
A = 99
print *,(A(iii),iii=1,5)

end
