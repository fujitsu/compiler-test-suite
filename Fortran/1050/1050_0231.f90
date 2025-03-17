!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp task private(a)
      a=10
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end task
  !$omp end parallel

  print *,"pass"
end program main
