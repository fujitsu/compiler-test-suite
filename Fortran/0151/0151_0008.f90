module m1
type x0
  integer,allocatable::xb(:)
end type
type x
  integer::x1=1
  integer,pointer::xp=>null()
  integer,allocatable::xa(:)
  type(x0),allocatable::xx
  character(3)::x2='123'
end type
end
subroutine s1(kk)
use m1
do k=1,kk
block
type (x):: v1,v2(2),v3(k)
type(x),allocatable:: v4(:)
allocate(v4(k))
do mm=1,k
if (v4(mm)%x1/=1) print *,101
v4(mm)%x1=2
if (associated(v4(mm)%xp)) print *,102
allocate(v4(mm)%xp,source=2)
if (allocated(v4(mm)%xa)) print *,103
allocate(v4(mm)%xa(2),source=2)
if (allocated(v4(mm)%xx)) print *,104
allocate(v4(mm)%xx)
allocate(v4(mm)%xx%xb(2),source=2)
if (v4(mm)%x2/='123') print *,101
end do

do mm=1,k
if (v3(mm)%x1/=1) print *,101
v3(mm)%x1=2
if (associated(v3(mm)%xp)) print *,102
allocate(v3(mm)%xp,source=2)
if (allocated(v3(mm)%xa)) print *,103
allocate(v3(mm)%xa(2),source=2)
if (allocated(v3(mm)%xx)) print *,104
allocate(v3(mm)%xx)
allocate(v3(mm)%xx%xb(2),source=2)
if (v3(mm)%x2/='123') print *,101
end do

do mm=1,2
if (v2(mm)%x1/=1) print *,101
v2(mm)%x1=2
if (associated(v2(mm)%xp)) print *,102
allocate(v2(mm)%xp,source=2)
if (allocated(v2(mm)%xa)) print *,103
allocate(v2(mm)%xa(2),source=2)
if (allocated(v2(mm)%xx)) print *,104
allocate(v2(mm)%xx)
allocate(v2(mm)%xx%xb(2),source=2)
if (v2(mm)%x2/='123') print *,101
end do

if (v1%x1/=1) print *,101
v1%x1=2
if (associated(v1%xp)) print *,102
allocate(v1%xp,source=2)
if (allocated(v1%xa)) print *,103
allocate(v1%xa(2),source=2)
if (allocated(v1%xx)) print *,104
allocate(v1%xx)
allocate(v1%xx%xb(2),source=2)
if (v1%x2/='123') print *,101

do n=1,k
end do
end block
end do
end
call s1(3)
print *,'pass'
end

