!
!
!
!

program main
  integer::a=5,i
  !$omp parallel
    !$omp do private(a)
    do i=1,10
      a=i
      !$omp task shared(a)
          a=10
      !$omp end task
      !$omp taskwait
      if (a.ne.10) then
        print *,"NG:a=",a
      end if
    end do
  !$omp end parallel

  print *,"pass"
end program main
