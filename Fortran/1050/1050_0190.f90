!
!
!
!

program main
  integer::a=5,i
  !$omp parallel private(a)
    a=10
    !$omp do private(a)
      do i=0,10
        a=i
        !$omp task
          if (a.eq.i) then
            a=a+i
          else
            print *,"NG:",i,"a=",a
          end if
        !$omp end task
        !$omp taskwait
        if (a.ne.i) then
          print *,"NG:",i,"a=",a
        end if
      end do
  !$omp end parallel

  if (a.ne.5) then
    print *,"NG:a=",a
  end if
  print *,"pass"
end program main
