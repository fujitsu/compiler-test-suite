!
!
!
!

program main
  integer::a=5
  !$omp parallel private(a)
    a=20
    !$omp critical
      !$omp task shared(a)
        a=10
      !$omp end task
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end critical
  !$omp end parallel

  print *,"pass"
end program main
