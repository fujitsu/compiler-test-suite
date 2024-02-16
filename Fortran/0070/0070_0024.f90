module m1
   integer ,allocatable:: a1(:)
contains
subroutine alc
allocate(a1(2))
end subroutine
end
module m2
use m1,only:a2=>a1
end
subroutine s1
use m1
use m2
call alc
a1(1)=1
a2(1)=a1(1)+1
if (a1(1)/=2) print *,101
if (a2(1)/=2) print *,102
!$omp parallel 
if (a1(1)/=2) print *,111
if (a2(1)/=2) print *,112
!$omp end parallel
!$omp parallel private(a1) 
a1=2
a2=3
if (a1(1)/=2) print *,121
if (a2(1)/=3) print *,122
!$omp end parallel
!$omp parallel firstprivate(a1) 
if (a1(1)/=3) print *,131
if (a2(1)/=3) print *,132
!$omp end parallel
!$omp do lastprivate(a1) 
do k=1,1
a1=4
a2=5
if (a1(1)/=4) print *,141
if (a2(1)/=5) print *,142
end do
!$omp end do
if (a1(1)/=4 .and. &
    a2(1)/=5) print *,152
end
call s1
print *,'pass'
end
