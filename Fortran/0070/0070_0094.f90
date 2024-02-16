module m1
integer,allocatable,dimension(:):: a
contains
subroutine s1(k1,k2)
integer,allocatable,dimension(:):: aa
namelist /namaa/ aa
namelist /nama/ a
!$omp parallel
allocate(aa(2))
do k=k1,k2
aa=(/1,2/)
write(2,namaa)
a=(/1,2/)
write(1,nama)
end do
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
allocate(a(2))
call       s1(1,1)
if (any(a/=(/1,2/)))print *,'error-1'
rewind 1
rewind 2
call chk
end
call omp_set_num_threads(1)
call s1_0
print *,'pass'
end
subroutine chk
use m1
integer,allocatable,dimension(:):: aa
namelist /namaa/ aa
namelist /nama/ a
allocate(aa(2))
read(1,nama)
if (any(a/=(/1,2/)))print *,'error-11'
read(2,namaa)
if (any(a/=(/1,2/)))print *,'error-12'
end
