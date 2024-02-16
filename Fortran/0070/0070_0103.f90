module m1
contains
subroutine s1(a1,a2,a3,a4,a5)
integer,allocatable,dimension(:):: a1,a2,a3,a4,a5
namelist /nama/ a1,a2,a3,a4,a5
!$omp parallel
a1=1; a2=1; a3=1;a4=1;a5=1
read(1,nama)
if (any(a1/=[2,3])) print *,1021
if (any(a2/=[2,3])) print *,1022
if (any(a3/=[2,3])) print *,1023
if (any(a4/=[2,3])) print *,1024
if (any(a5/=[2,3])) print *,1025
a1=1; a2=1; a3=1;a4=1;a5=1
read(1,nama)
if (any(a1/=[4,5])) print *,1021
if (any(a2/=[4,5])) print *,1022
if (any(a3/=[4,5])) print *,1023
if (any(a4/=[4,5])) print *,1024
if (any(a5/=[4,5])) print *,1025
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
integer,allocatable,dimension(:):: a1,a2,a3,a4,a5
allocate(a1(2))
allocate(a2(2))
allocate(a3(2))
allocate(a4(2))
allocate(a5(2))
call       s1(a1,a2,a3,a4,a5)
end
integer,allocatable,dimension(:):: a1,a2,a3,a4,a5
call omp_set_num_threads(1)
call put(a1,a2,a3,a4,a5)
call s1_0
print *,'pass'
contains
subroutine put(a1,a2,a3,a4,a5)
integer,allocatable,dimension(:):: a1,a2,a3,a4,a5
namelist /nama/ a1,a2,a3,a4,a5
!$omp parallel
allocate(a1(2))
allocate(a2(2))
allocate(a3(2))
allocate(a4(2))
allocate(a5(2))
a1=[2,3]
a2=[2,3]
a3=[2,3]
a4=[2,3]
a5=[2,3]
write(1,nama) 
a1=[4,5]
a2=[4,5]
a3=[4,5]
a4=[4,5]
a5=[4,5]
write(1,nama) 
!$omp end parallel
rewind 1
end subroutine
end

