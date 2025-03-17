!
!
!
!

program main
  integer::a=5
  !$omp parallel
    !$omp sections private(a)
      a=10
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
      !$omp section
        a=20
        !$omp taskwait
        if (a.ne.20) then
          print *,"NG:a=",a
        end if
    !$omp end sections
  !$omp end parallel

  print *,"pass"
end program main
