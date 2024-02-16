module m1
contains
subroutine s1(a)
integer,pointer,dimension(:):: a
namelist /nama/ a
!$omp parallel
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
integer,pointer,dimension(:):: a
allocate(a(2))
a=(/1,2/)
call       s1(a)
if (any(a/=(/4,5/)))print *,'error-1'
end
call omp_set_num_threads(1)
call s1_0
call chk
print *,'pass'
end
subroutine chk
integer,pointer,dimension(:):: a
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

