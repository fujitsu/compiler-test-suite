module m0
 procedure(p0):: p1
 private::p0
contains
   subroutine p0()
   end subroutine
end 
module m1
 use m0
  interface gnr
    procedure p1
  end interface
  integer:: n=0
  private :: p1
end
module m2
use m1
contains
subroutine p1()
  n=n+1
end subroutine
end
use m2
call p1()
 if (n/=1) print *,1
call gnr()
 if (n/=11) print *,102
print *,'pass'
end
   subroutine p1()
   use m1 , only:n
   n=n+10
   end subroutine
