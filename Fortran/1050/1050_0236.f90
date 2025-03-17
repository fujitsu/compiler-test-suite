!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp single private(a)
      a=15
      !$omp task shared(a)
        a=10
      !$omp end task
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end single
  !$omp end parallel

  print *,"pass"
end program main
