module m1
type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
subroutine ss(c1,c2,c3,c4,n1,n2,n3,n4)
class(*),allocatable::c1
class(*),allocatable::c2(:)
class(x),allocatable::c3
class(x),allocatable::c4(:)
optional:: c1,c2,c3,c4
k=0
write(1,'(z16.16)') loc(c1)
write(1,'(z16.16)') loc(c2)
write(1,'(z16.16)') loc(c3)
write(1,'(z16.16)') loc(c4)
if (present(c1)) then
 k=1
 select type (c1)
  type is(y)
    if (c1%y1/=10) print *,101
    if (c1%x1/=1) print *,112
    k=2
  type is(x)
    if (c1%x1/=1) print *,111
    k=1
 end select
end if
if (k/=n1) print *,102
k=0
if (present(c2)) then
 k=1
 select type (c2)
  type is(y)
    if (c2(2)%y1/=10) print *,9101
    if (c2(2)%x1/=1) print *,9112
    k=2
  type is(x)
    if (c2(2)%x1/=1) print *,9111
    k=1
 end select
end if
if (k/=n2) print *,9102
k=0
if (present(c3)) then
 k=1
 select type (c3)
  type is(y)
    if (c3%y1/=10) print *,99101
    if (c3%x1/=1) print *,99112
    k=2
  type is(x)
    if (c3%x1/=1) print *,99111
    k=1
 end select
end if
if (k/=n3) print *,99102
k=0
if (present(c4)) then
 k=1
 select type (c4)
  type is(y)
    if (c4(2)%y1/=10) print *,999101
    if (c4(2)%x1/=1) print *,999112
    k=2
  type is(x)
    if (c4(2)%x1/=1) print *,999111
    k=1
 end select
end if
if (k/=n4) print *,999102
end subroutine
end
subroutine s1
use m1
class(*),allocatable::c1
class(*),allocatable::c2(:)
class(x),allocatable::c3
class(x),allocatable::c4(:)
call ss(n1=0,n2=0,n3=0,n4=0)
allocate(x:: c1)
select type (c1)
type is(x)
c1%x1=1
end select
allocate(x:: c2(2))
select type (c2)
type is(x)
c2%x1=1
end select
allocate(x:: c3)
select type (c3)
type is(x)
c3%x1=1
end select
allocate(x:: c4(2))
select type (c4)
type is(x)
c4%x1=1
end select
call ss(c1,c2,c3,c4,n1=1,n2=1,n3=1,n4=1)
deallocate(c1,c2,c3,c4)
allocate(y:: c1)
allocate(y:: c2(2))
allocate(y:: c3)
allocate(y:: c4(2))
select type (c1)
type is(y)
c1%x1=1
c1%y1=10
end select
select type (c2)
type is(y)
c2%x1=1
c2%y1=10
end select
select type (c3)
type is(y)
c3%x1=1
c3%y1=10
end select
select type (c4)
type is(y)
c4%x1=1
c4%y1=10
end select
call ss(c1,c2,c3,c4,n1=2,n2=2,n3=2,n4=2)
end
call s1
rewind 1
call chk
print *,'pass'
end
subroutine chk
character(16) c
character(*),parameter::z='0000000000000000'
do k=1,4
read(1,'(a)') c ;if (c/=z) print *,77101,k
end do
do k=1,8
read(1,'(a)') c ;if (c==z) print *,77102,k
end do
read(1,'(a)',end=1) c 
print *,77
1 end
