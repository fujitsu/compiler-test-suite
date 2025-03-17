!
!
!
!

program main
  integer::a=0,i
  !$omp parallel
    !$omp do ordered
    do i=1,10
      !$omp ordered
        !$omp task
          !$omp atomic
            a=a+1
        !$omp end task
      !$omp end ordered
    enddo
  !$omp end parallel

  if (a.ne.10) then
    print *,"NG:a=",a
  endif
  print *,"pass"

end program main
