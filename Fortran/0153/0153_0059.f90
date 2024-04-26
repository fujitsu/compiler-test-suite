module m1
interface gnr
  module procedure prc,gnr
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
call gnr()
n=0
call gnr(n)
print *,'pass'
end
