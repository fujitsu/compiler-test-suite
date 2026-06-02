module m1
type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
 recursive subroutine ss(c1,c2,c3,c4,n1,n2,n3,n4,m)
type(*)::c1
type(*)::c2(..)
type(x)::c3
type(x)::c4(..)
optional:: c1,c2,c3,c4
if (m>3) return
m=m+1
k=0
if (present(c1)) then
write(1,'(z16.16)') loc(c1)
 k=1
end if
if (k/=n1) print *,102
k=0
if (present(c2)) then
write(1,'(z16.16)') loc(c2)
 k=1
end if
if (k/=n2) print *,9102
k=0
if (present(c3)) then
write(1,'(z16.16)') loc(c3)
 k=1
end if
if (k/=n3) print *,99102
k=0
if (present(c4)) then
write(1,'(z16.16)') loc(c4)
 k=1
end if
if (k/=n4) print *,999102
call ss(c1,c2,c3,c4,n1,n2,n3,n4,m)
end subroutine
end
subroutine s1
use m1
class(x),allocatable::c1
class(x),allocatable::c2(:)
class(x),allocatable::c3
class(x),allocatable::c4(:)
integer::m=0
call ss(n1=0,n2=0,n3=0,n4=0,m=m)
allocate(y:: c1)
allocate(y:: c2(2))
allocate(y:: c3)
allocate(y:: c4(2))
m=0
call ss(c1,c2,c3,c4,n1=1,n2=1,n3=1,n4=1,m=m)
end
call s1
print *,'pass'
end
