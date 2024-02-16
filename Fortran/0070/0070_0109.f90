module m1
contains
subroutine s1(a)
integer,allocatable:: a
namelist /nama/ a
!$omp parallel
a=1
read(1,nama)
if ((a/=2)) print *,102
a=2
read(1,nama)
if (a/=4) print *,103
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
integer,allocatable:: a
allocate(a)
call       s1(a)
if ((a/=4))print *,'error-1'
end
integer,allocatable:: a
call omp_set_num_threads(1)
call put(a)
call s1_0
print *,'pass'
contains
subroutine put(a)
integer,allocatable:: a
namelist /nama/ a
!$omp parallel
allocate(a)
a=2
write(1,nama) 
a=4
write(1,nama) 
!$omp end parallel
rewind 1
end subroutine
end

