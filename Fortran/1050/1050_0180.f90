!
!
!
!

program main
  integer::a=0
  !$omp parallel
    !$omp master
      !$omp critical
        !$omp task
          !$omp atomic
            a=a+1
        !$omp end task
      !$omp end critical
    !$omp end master
  !$omp end parallel

  if (a.ne.1) then
    print *,"NG:a=",a
  endif
  print *,"pass"

end program main
