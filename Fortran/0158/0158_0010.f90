module m1
  interface gnr
   module procedure p1
  end interface
  integer:: n=0
  contains
   subroutine p1()
   end subroutine
end
module m2
use m1,only:n
contains
subroutine p1()
  n=n+1
end subroutine
end
use m2,only:p1,n
call p1()
 if (n/=1) print *,101
print *,'pass'
end
