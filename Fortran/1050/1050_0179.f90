!
!
!
!

program main
  integer::a=0
  !$omp parallel
    !$omp sections
      !$omp critical
        !$omp task
          !$omp atomic
            a=a+10
        !$omp end task
      !$omp end critical
      !$omp section
        !$omp critical
          !$omp task
            !$omp atomic
              a=a+10
          !$omp end task
        !$omp end critical
    !$omp end sections
  !$omp end parallel

  if (a.ne.20) then
    print *,"NG:a=",a
  endif
  print *,"pass"

end program main
