module m
contains
  subroutine s(ss1)
    integer,asynchronous,pointer::ss1
    optional::ss1
    intent(in) ss1
    !$omp task firstprivate(ss1)
    !$omp end task
  end subroutine s
end module m
use m
real,pointer::ss3(:)
allocate(ss3(2))
!$omp task firstprivate(ss3)
ss3=1
!$omp end task
  print *,'pass'
contains
  function fun(ss2)
    integer,value,intent(in)::ss2
    !$omp parallel firstprivate(ss2)
    !$omp end parallel
  end function fun
end
