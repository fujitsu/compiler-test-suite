module m1
contains
subroutine s1()
    !$omp parallel default(none) private(k)
k=1
  call foo( [ (k,k =k,k+1)] )
!$omp end parallel 
end subroutine
subroutine s2()
    !$omp task default(none) private(k) 
k=1
  call foo( [ (k,k =k,k+1 )] )
!$omp end task
end subroutine
end
use m1
call s1()
call s2()
print *,'pass'
end
subroutine foo(n)
integer n(2)
if (any(n/=[1,2])) print *,101
end
