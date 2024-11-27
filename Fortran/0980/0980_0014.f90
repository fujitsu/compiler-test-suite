module mod
  integer, protected  :: iii
end module

use mod

INTEGER A(10)
a=1
write(6,*)(A(iii),iii=1,5)

end
