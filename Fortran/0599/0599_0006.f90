module m1
integer::ip=3
contains
subroutine s1()
    !$omp parallel default(none)
  DO CONCURRENT(ip=0:1)
  END DO
!$omp end parallel 
end subroutine
subroutine s2()
    !$omp task default(none) 
  DO CONCURRENT(ip=0:1)
  END DO
!$omp end task
end subroutine
end
use m1
call s1()
call s2()
print *,'pass'
end
