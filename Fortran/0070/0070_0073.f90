module m1
contains
subroutine s1(a)
integer,pointer,dimension(:):: a
namelist /nama/ a
!$omp parallel
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
integer,pointer,dimension(:):: a
allocate(a(2))
call       s1(a)
if (any(a/=(/4,5/)))print *,'error-1'
end
integer,pointer,dimension(:):: a
call omp_set_num_threads(1)
call put(a)
call s1_0
print *,'pass'
contains
subroutine put(a)
integer,pointer,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
a=[2,3]
write(1,nama) 
a=[4,5]
write(1,nama) 
rewind 1
!$omp end parallel
end subroutine
end

