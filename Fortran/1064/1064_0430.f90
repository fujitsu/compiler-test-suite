module m0
 integer::n
end
module m2
use m0
private
public:: s1
  integer,allocatable:: z1(:),z2(:),z3(:),z(:)
contains
subroutine s1
allocate(z(10:10),stat=k)
z=1
if (lbound(z,1)/=10) print *,101
if (any(z/=1)) print *,102
if (k/=0) print *,1041
allocate(z1,z2,z3,source=z,stat=k)
if (lbound(z1,1)/=10) print *,121
if (any(z1/=1)) print *,122
if (lbound(z2,1)/=10) print *,131
if (any(z2/=1)) print *,132
if (lbound(z3,1)/=10) print *,141
if (any(z3/=1)) print *,142
select case (n) 
case (1)
if (k/=0) print *,1241
case default
if (k/=0) print *,12421
end select
deallocate(z1)
deallocate(z)
allocate(z(20:20),source=1,stat=k)
allocate(z1,z2,z3,source=z,stat=k)
if (lbound(z1,1)/=20) print *,121
if (any(z1/=1)) print *,122
if (lbound(z2,1)/=10) print *,131
if (any(z2/=1)) print *,132
if (lbound(z3,1)/=10) print *,141
if (any(z3/=1)) print *,142
select case (n) 
case (1)
if (k==0) print *,1241
case default
if (k==0) print *,1242
end select
deallocate(z1,z2)
deallocate(z)
allocate(z(30:30),stat=k,source=1)
allocate(z1,z2,z3,source=z,stat=k)
if (lbound(z1,1)/=30) print *,121
if (any(z1/=1)) print *,122
if (lbound(z2,1)/=30) print *,131
if (any(z2/=1)) print *,132
if (lbound(z3,1)/=10) print *,141
if (any(z3/=1)) print *,142
select case (n) 
case (1)
if (k==0) print *,1241
case default
if (k==0) print *,1242
end select
deallocate(z2,z1,z3,z)
end subroutine
end
use m2
use m0
do n =1,10
call s1
end do
print *,'pass'
end
