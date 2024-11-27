module mod
  integer, protected  :: iii,hhh
end module

use mod

INTEGER A(10)
read(6,*)((A(iii),iii=1,5),hhh=1,5)

print *,A

end
