!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp critical
      a=10
    !$omp end critical
    !$omp taskwait
    if (a.ne.10) then
      print *,"NG:a=",a
    end if
  !$omp end parallel

  print *,"pass"
end program main
