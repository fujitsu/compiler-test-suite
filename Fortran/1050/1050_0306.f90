!
!
!
!

program main
  integer::a=10
  !$omp parallel
    !$omp task if(.false.) untied default(private)
      a=100
    !$omp end task
    !$omp task if(.true.) untied default(private)
      a=200
    !$omp end task
    !$omp taskwait
    if (a.ne.10) then
      print *,"NG:a=",a
    end if
  !$omp end parallel

  print *,"pass"
end program main
