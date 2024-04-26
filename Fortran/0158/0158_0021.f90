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
use m1,only:n
contains
subroutine p1(k)
  n=n+k
end subroutine
end
use m2,only:n,p1
call p1(1)
 if (n/=1) print *,1
print *,'pass'
end
