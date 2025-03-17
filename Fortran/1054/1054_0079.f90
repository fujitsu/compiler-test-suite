module m1
contains
subroutine s1(a)
integer,pointer::a
!$omp parallel 
!$omp do reduction(+:a)
  do i=1,1000
    a=a+1
  end do
!$omp end parallel
end subroutine s1
end module m1

use m1
integer,pointer::a
allocate(a)
a=0
call s1(a)
if (a/=1000) print *,101
print *,'pass'
end
