module m2
  implicit none
  integer :: n=1
  contains
   integer pure function if(kk)
   integer,intent(in)::kk
   if=kk
  end function
end

module m3
  implicit none
  integer :: n=10000
contains
    subroutine sub(k,a)
      use m2
  implicit none
interface 
   integer pure function k(kk)
   integer,intent(in)::kk
  end function
end interface
      integer :: a(n),b(k(2))
    if (size(a) /= 1) print *,3,size(a)
    if (size(b) /= 2) print *,4,size(b)
    end subroutine
end

use m3
use m2
integer::a(8)
      procedure (if)::kf
a(1)=2
call sub(kf,a)
print *,'pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end function
