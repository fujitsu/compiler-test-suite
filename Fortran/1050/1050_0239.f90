!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp master
      a=10
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end master
  !$omp end parallel

  print *,"pass"
end program main
