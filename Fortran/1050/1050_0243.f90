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
        a=10
        !$omp taskwait
        if (a.ne.10) then
          print *,"NG:a=",a
        end if
      !$omp end ordered
    end do
  !$omp end parallel

  print *,"pass"
end program main
