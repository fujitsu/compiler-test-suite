module m0
  integer:: n=0
  contains
   subroutine p1()
    n=n+10
   end subroutine
end
module m1
use m0,only:p1,n
  interface gnr
   module procedure p1
  end interface
end
module m2
use m1,only:n,gnr
contains
subroutine p1()
  n=n+1
end subroutine
end
use m2,only:gnr,n,p1
call p1()
 if (n/=1) print *,1
call gnr()
 if (n/=11) print *,11
print *,'pass'
end
