module mm
  type x
    integer:: x1=1
    integer:: x2=2
  end type
end
module m1
use mm
type,extends(x):: y
    integer:: y1=3
end type
type,extends(y):: w
    integer:: w1=4
end type
public x
contains 
function f(c) result(r)
class(x),pointer::c(:)
class(x),pointer::r(:)
r=>c
end function
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
  class(x),allocatable:: z1(:),z2(:),z3(:)
  class(x),pointer:: z(:)
allocate(y::z(10:10),stat=k)
if (lbound(z,1)/=10) print *,101
if (any(z%x1/=1)) print *,102
if (any(z%x2/=2)) print *,103
nn=0
select type(z)
 class is (y)
if (any(z%y1/=3)) print *,105
nn=1
end select
if (nn==0) print *,106
select case (n) 
case (1)
if (k/=0) print *,1041
case default
if (k/=0) print *,1042
end select
allocate(z1,z2,z3,source=f(z),stat=k)
if (lbound(z1,1)/=10) print *,121
if (any(z1%x1/=1)) print *,122
if (any(z1%x2/=2)) print *,123
if (lbound(z2,1)/=10) print *,131
if (any(z2%x1/=1)) print *,132
if (any(z2%x2/=2)) print *,133
if (lbound(z3,1)/=10) print *,141
if (any(z3%x1/=1)) print *,142
if (any(z3%x2/=2)) print *,143
select case (n) 
case (1)
if (k/=0) print *,1141
case default
if (k/=0) print *,1142
end select
nn=0
select type(z)
 class is (y)
if (any(z%y1/=3)) print *,105
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z1)
 class is (y)
if (any(z1%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z2)
 class is (y)
if (any(z2%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z3)
 class is (y)
if (any(z3%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
deallocate(z1)
deallocate(z)
allocate(w::z(20:20),stat=k)
allocate(z1,z2,z3,source=f(z),stat=k)
if (lbound(z1,1)/=20) print *,121
if (any(z1%x1/=1)) print *,122
if (any(z1%x2/=2)) print *,123
if (lbound(z2,1)/=10) print *,131
if (any(z2%x1/=1)) print *,132
if (any(z2%x2/=2)) print *,133
if (lbound(z3,1)/=10) print *,141
if (any(z3%x1/=1)) print *,142
if (any(z3%x2/=2)) print *,143
select case (n) 
case (1)
if (k==0) print *,1241
case default
if (k==0) print *,1242
end select
nn=0
select type(z)
 class is (w)
if (any(z%w1/=4)) print *,1059
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z1)
 class is (w)
if (any(z1%w1/=4)) print *,10519
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z2)
 class is (y)
if (any(z2%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z3)
 class is (y)
if (any(z3%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
deallocate(z1,z2)
deallocate(z)
allocate(w::z(30:30),stat=k)
allocate(z1,z2,z3,source=f(z),stat=k)
if (lbound(z1,1)/=30) print *,121
if (any(z1%x1/=1)) print *,122
if (any(z1%x2/=2)) print *,123
if (lbound(z2,1)/=30) print *,131
if (any(z2%x1/=1)) print *,132
if (any(z2%x2/=2)) print *,133
if (lbound(z3,1)/=10) print *,141
if (any(z3%x1/=1)) print *,142
if (any(z3%x2/=2)) print *,143
select case (n) 
case (1)
if (k==0) print *,1241
case default
if (k==0) print *,1242
end select
select type(z)
 class is (w)
if (any(z%w1/=4)) print *,10591
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z1)
 class is (w)
if (any(z1%w1/=4)) print *,10519
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z2)
 class is (w)
if (any(z2%w1/=4)) print *,10519
nn=1
end select
if (nn==0) print *,106
nn=0
select type(z3)
 class is (y)
if (any(z3%y1/=3)) print *,1051
nn=1
end select
if (nn==0) print *,106
deallocate(z1,z2)
end subroutine
end
use m2
use m0
do n =1,10
call s1
end do
print *,'pass'
end
