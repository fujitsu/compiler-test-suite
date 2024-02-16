module m1
contains
subroutine s1(a,k1,k2)
integer,allocatable,dimension(:):: a
namelist /nama/ a
!$omp parallel
do k=k1,k2
a=1
read(1,nama)
if (any(a/=[2,3])) print *,102
a=2
read(1,nama)
if (any(a/=[4,5])) print *,103
end do
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
integer,allocatable,dimension(:):: a
allocate(a(2))
call       s1(a,1,1)
if (any(a/=(/4,5/)))print *,'error-1'
end
call omp_set_num_threads(1)
call put(1,1)
call s1_0
print *,'pass'
contains
subroutine put(k1,k2)
integer,allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
!$omp parallel
do k=k1,k2
a(1)=2
a(2)=3
write(1,nama) 
a(1)=4
a(2)=5
write(1,nama) 
end do
rewind 1
!$omp end parallel
end subroutine
end

