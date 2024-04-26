module m0
  integer:: n=0
  contains
   subroutine p1()
    n=n+10
   end subroutine
end
module m1
use m0
  interface gnr
   module procedure p1
  end interface
  private :: p1
end
module m2
contains
subroutine p1()
use m1
  n=n+1
end subroutine
end
use m2
use m1
call p1()
 if (n/=1) print *,1
call gnr()
 if (n/=11) print *,11
print *,'pass'
end
