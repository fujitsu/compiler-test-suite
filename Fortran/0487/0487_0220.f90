module m1
  type x
    integer:: x1
     integer:: y1
  end type
  type(x),allocatable:: zz(:)
  type(x)            :: yz(2:3)
end
subroutine s1
use m1
yz(2)=x(1,1)
yz(3)=x(1,1)
zz= yz
if (any(ubound(zz)/=3)) print *,901, ubound(zz)
if (any(lbound(zz)/=2)) print *,911, lbound(zz)
end
call s1
print *,'pass'
end
