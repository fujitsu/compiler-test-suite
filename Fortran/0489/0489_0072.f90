module m1
  type x
    integer,allocatable:: x1(:)
  end type
  type,extends(x):: y
     integer:: y1
  end type
  type(y),allocatable:: zz(:)
  type(y)            :: yz(2:3)
end
subroutine s1
use m1
allocate(yz(2)%x1(4:6),source=[4,5,6])
allocate(yz(3)%x1(4:6),source=[4,5,6]+10)
zz= yz
if (any(ubound(zz)/=3)) print *,901, ubound(zz)
if (any(lbound(zz)/=2)) print *,911, lbound(zz)
end
call s1
print *,'pass'
end

