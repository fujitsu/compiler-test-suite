!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp sections private(a)
      a=2
      !$omp task shared(a)
        a=10
      !$omp end task
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG-1:a=",a
      end if
      !$omp section
        a=8
        !$omp task
          a=20
        !$omp end task
        !$omp taskwait
        if (a.ne.8) then
          print *,"NG-2:a=",a
        end if
    !$omp end sections
  !$omp end parallel

  print *,"pass"

end program main
