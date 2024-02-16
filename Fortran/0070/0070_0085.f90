module m1
integer,allocatable,dimension(:):: a
integer,allocatable,dimension(:):: aa
contains
subroutine s1(k1,k2)
namelist /namaa/ aa
namelist /nama/ a
allocate(aa(2))
do k=k1,k2
aa=(/1,2/)
write(2,namaa)
a=(/1,2/)
write(1,nama)
aa=(/1,2/)
write(2,namaa)
a=(/1,2/)
write(1,nama)
end do
end subroutine
end
subroutine s1_0
use m1
allocate(a(2))
call       s1(1,1)
if (any(a/=(/1,2/)))print *,'error-1'
call chk(1)
end
call s1_0
print *,'pass'
end
subroutine chk(k1)
integer,allocatable,dimension(:):: a
integer,allocatable,dimension(:):: aa
namelist /namaa/ aa
namelist /nama/ a
do k=1,k1
rewind 1
rewind 2
allocate(aa(2))
allocate(a(2))
read(2,namaa)
if (any(aa/=(/1,2/)))print *,'error-11'
read(2,namaa)
if (any(aa/=(/1,2/)))print *,'error-21'
read(1,nama)
if (any(a/=(/1,2/)))print *,'error-31'
read(1,nama)
if (any(a/=(/1,2/)))print *,'error-41'
end do
end
