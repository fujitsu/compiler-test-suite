!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp master
      !$omp task
        a=10
      !$omp end task
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end master
  !$omp end parallel

  print *,"pass"
end program main
