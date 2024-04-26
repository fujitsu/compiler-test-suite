module m1
  type x
    integer:: x1=1
    integer:: x2=2
  end type
  type(x),allocatable:: z1(:),z2(:),z3(:),z(:)
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
allocate(z(10:10),stat=k)
if (lbound(z,1)/=10) print *,101
if (any(z%x1/=1)) print *,102
if (any(z%x2/=2)) print *,103
select case (n) 
case (1)
if (k/=0) print *,1041
case default
if (k==0) print *,1042
end select
allocate(z1,z2,z3,source=z,stat=k)
if (lbound(z1,1)/=10) print *,121
if (any(z1%x1/=1)) print *,122
if (any(z1%x2/=2)) print *,123
if (lbound(z2,1)/=10) print *,131
if (any(z2%x1/=1)) print *,132
if (any(z2%x2/=2)) print *,133
if (lbound(z3,1)/=10) print *,131
if (any(z3%x1/=1)) print *,132
if (any(z3%x2/=2)) print *,133
select case (n) 
case (1)
if (k/=0) print *,1141
case default
if (k==0) print *,1142
end select
allocate(z1,z2,z3,source=z,stat=k)
if (lbound(z1,1)/=10) print *,121
if (any(z1%x1/=1)) print *,122
if (any(z1%x2/=2)) print *,123
if (lbound(z2,1)/=10) print *,131
if (any(z2%x1/=1)) print *,132
if (any(z2%x2/=2)) print *,133
if (lbound(z3,1)/=10) print *,131
if (any(z3%x1/=1)) print *,132
if (any(z3%x2/=2)) print *,133
select case (n) 
case (1)
if (k==0) print *,1241
case default
if (k==0) print *,1242
end select
end subroutine
end
use m2
use m0
do n =1,10
call s1
end do
print *,'pass'
end
