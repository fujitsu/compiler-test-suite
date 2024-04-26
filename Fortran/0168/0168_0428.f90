module m1
  type x
    integer,allocatable:: x1(:)
    integer:: x2
  end type
  type(x),allocatable:: z1,z2,z3
  type(x)::w
end
module m0
 integer::n
end
module m2
use m1
use m0
private
public:: s1
contains
subroutine s1
allocate(w%x1(2),stat=k)
w%x1=1
w%x2=2
if (any(w%x1/=1)) print *,9102
if (   (w%x2/=2)) print *,7103
if (k/=0) print *,104190
allocate(z1,z2,z3,mold=w,stat=k)
if (allocated(z1%x1)) print *,8001
if (allocated(z2%x1)) print *,8002
if (allocated(z3%x1)) print *,8003
z1%x2=2
z2%x2=2
z3%x2=2
w%x2=-2
if (   (w%x2/=-2)) print *,17103
if (   (z1%x2/=2)) print *,12301
if (   (z2%x2/=2)) print *,123012
if (   (z3%x2/=2)) print *,123013
if (k/=0) print *,1141
end subroutine
end
use m2
use m0
call s1
print *,'pass'
end
