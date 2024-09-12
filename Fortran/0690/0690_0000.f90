integer,parameter::ii=1
  !$omp   critical (aaa)hint(ii*ii)
  !$omp end critical(aaa)
  !$omp   critical (bbb),hint(1**1)
  !$omp end critical(bbb)
  !$omp   critical (critical),hint(1*1)
  !$omp end critical(critical)
  !$omp   critical (hint),hint(1*1)
  !$omp end critical(hint)
  !$omp   critical (hintz)
  !$omp end critical(hintz)
print *,'pass'
end program
