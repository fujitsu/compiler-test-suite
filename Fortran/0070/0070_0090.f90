module m1
contains
subroutine s1()
integer,allocatable,dimension(:):: a
namelist /nama/ a
allocate(a(2))
!$omp parallel
a=(/1,2/)
a=a+1
write(1,nama)
a=a+1
write(1,nama)
a=a+1
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
call       s1()
end
call omp_set_num_threads(1)
call s1_0
call chk
print *,'pass'
end
subroutine chk
integer,allocatable,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
rewind 1
read(1,nama) 
if (any(a/=[2,3])) print *,102
read(1,nama) 
if (any(a/=[3,4])) print *,103
!$omp end parallel
end

