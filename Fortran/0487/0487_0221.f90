module m1
  type x
    integer,allocatable:: x1(:)
     integer:: y1
  end type
  type(x),allocatable:: zz(:)
  type(x)            :: yz(2:3)
end
subroutine s1
use m1
allocate(yz(2)%x1(4:6),source=[4,5,6])
allocate(yz(3)%x1(4:6),source=[4,5,6]+10)
zz= yz(:)
if (any(ubound(zz)/=2)) print *,901, ubound(zz)
if (any(lbound(zz)/=1)) print *,911, lbound(zz)
end
call s1
print *,'pass'
end
