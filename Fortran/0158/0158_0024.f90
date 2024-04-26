module m0
  contains
   subroutine p1()
   end subroutine
end
module m1
use m0
  interface gnr
   module procedure p1
  end interface
  integer:: n=0
end
module m2
contains
subroutine p1()
use m1,only:n
  n=n+1
end subroutine
end
use m1,only:n
use m2,only:p1
call p1()
 if (n/=1) print *,101
print *,'pass'
end
