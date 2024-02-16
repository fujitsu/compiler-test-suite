module m1
contains
subroutine s1()
integer,allocatable,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
a=1
read(1,nama)
if (any(a/=[2,3])) print *,102
a=2
read(1,nama)
if (any(a/=[4,5])) print *,103
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
call       s1()
end
call omp_set_num_threads(1)
call put()
call s1_0
print *,'pass'
contains
subroutine put()
integer,allocatable,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
a=[2,3]
write(1,nama) 
a=[4,5]
write(1,nama) 
!$omp end parallel
rewind 1
end subroutine
end

