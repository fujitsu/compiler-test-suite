program main
  integer::i
  integer::red2=5
!$omp parallel reduction(+:red2)
    red2=red2+10
!$omp parallel private(red2)
    do i=0,10
      red2=i
    end do
!$omp end parallel
!$omp task private(red2)
    do i=0,10
      red2=i
    end do
!$omp end task
!$omp do private(red2)
    do i=0,10
      red2=i
    end do
!$omp end do
!$omp end parallel
  print *,"pass"
end program main
