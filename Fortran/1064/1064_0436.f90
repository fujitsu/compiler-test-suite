module m1
intrinsic max
end
use m1, ren=>max
n=0
!$omp parallel do reduction(ren:n)
  do i=1,100
   n=max(n,i)
  end do
if (n/=100) print *,101
print *,'pass'
end
