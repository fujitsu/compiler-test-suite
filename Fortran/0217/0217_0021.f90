module m1
  type ty
    integer :: i=4
  end type
end
module m11
use m1
  type(ty) :: x
end
module m2
  type tt
    integer :: i=5
  end type
end
module m21
use m2
  type(tt) :: y
end
module m3
use m11
use m21
  interface
    module subroutine sub(a,b,aa,bb)
      integer :: a(3:x%i,3:x%i),b(3:y%i,3:y%i)
      integer :: aa(3:x%i,3:x%i),bb(3:y%i,3:y%i)
    end subroutine
  end interface
end

submodule (m3) smod
contains
module procedure sub
if (size(a)/=2*2) print *,101,size(a)
if (size(aa)/=2*2) print *,111,size(aa)
if (size(b)/=3*3) print *,102,size(b)
if (size(bb)/=3*3) print *,112,size(bb)
if (ubound(a,1)/=4) print *,101,ubound(a)
if (ubound(aa,1)/=4) print *,111,ubound(aa)
if (ubound(b,2)/=5) print *,102,ubound(b)
if (ubound(bb,2)/=5) print *,112,ubound(bb)
if (ubound(a,2)/=4) print *,101,ubound(a)
if (ubound(aa,2)/=4) print *,111,ubound(aa)
if (x%i/=4) print *,601
if (y%i/=5) print *,602
a=1
aa=1
b=1
bb=1
end
end
use m3  
      integer :: a(2*2),aa(2*2)
      integer :: b(3*3),bb(3*3)
call sub(a,b,aa,bb)
if (any(a/=1)) print *,701
if (any(aa/=1)) print *,702
if (any(b/=1)) print *,703
if (any(bb/=1)) print *,704
print *,'pass'
end
