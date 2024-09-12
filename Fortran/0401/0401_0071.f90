module m
  integer :: a,b,c,d
  common/com/a,b,c,d
end module

use m
b=1
d=2
!$omp parallel do firstprivate(a,b) lastprivate(c,d)
  do i = 1,1
    c=a
    d=b
  end do
!$omp end parallel do
print *,'pass'
end
