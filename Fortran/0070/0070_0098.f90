module m1
contains
subroutine s1(k1,k2)
integer,pointer,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
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
call       s1(1,1)
end
call omp_set_num_threads(1)
call put(1,1)
call s1_0
print *,'pass'
contains
subroutine put(k1,k2)
integer,pointer,dimension(:):: a
namelist /nama/ a
!$omp parallel
allocate(a(2))
do k=k1,k2
a=[2,3]
write(1,nama) 
a=[4,5]
write(1,nama) 
end do
rewind 1
!$omp end parallel
end subroutine
end

