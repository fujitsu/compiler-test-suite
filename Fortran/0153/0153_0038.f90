module m1
interface gnr
  module procedure prc
end interface
 contains
   subroutine prc()
   end subroutine
   subroutine gnr(k)
   k=k+1
   end subroutine
end
use m1
call prc()
print *,'pass'
end
