!
!
!
!

program main
  integer::a=5,i
  !$omp parallel private(a)
    a=10
    !$omp do
      do i=1,10
        !$omp task
          if (a.eq.10) then
            a=a+1
          else
            print *,"NG:",i,"a=",a
          end if
        !$omp end task
        !$omp taskwait
        if (a.ne.10) then
          print *,"NG:",i,"a=",a
        end if
      end do
  !$omp end parallel

  if (a.ne.5) then
    print *,"NG:a=",a
  end if
  print *,"pass"
end program main
