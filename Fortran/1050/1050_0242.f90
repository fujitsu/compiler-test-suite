!
!
!
!

program main
  integer::a=5,i

  !$omp parallel
    !$omp do ordered private(a)
    do i=0,10
      !$omp ordered
        a=12
        !$omp task
          a=10
        !$omp end task
        !$omp taskwait
        if (a.ne.12) then
          print *,"NG:a=",a
        end if
      !$omp end ordered
    end do
  !$omp end parallel

  print *,"pass"
end program main
