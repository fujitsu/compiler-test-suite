module m1
contains
subroutine s1(a,k1,k2)
integer,allocatable,dimension(:):: a
namelist /nama/ a
do k=k1,k2
a=a+1
write(1,nama)
a=a+1
write(1,nama)
a=a+1
end do
end subroutine
end
subroutine s1_0
use m1
integer,allocatable,dimension(:):: a
allocate(a(2))
a=(/1,2/)
call       s1(a,1,1)
if (any(a/=(/4,5/)))print *,'error-1'
end
call s1_0
call chk(1,1)
print *,'pass'
end
subroutine chk(k1,k2)
integer,allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
rewind 1
do k=k1,k2
read(1,nama) 
if (any(a/=[2,3])) print *,102
read(1,nama) 
if (any(a/=[3,4])) print *,103
end do
end
