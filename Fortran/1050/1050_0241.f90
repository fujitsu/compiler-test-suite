!
!
!
!

program main
  !$ use omp_lib
  integer::a=5

  !$omp parallel private(a)
    a=18
    !$omp critical
      a=10
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    !$omp end critical
  !$omp end parallel

  print *,"pass"
end program main
