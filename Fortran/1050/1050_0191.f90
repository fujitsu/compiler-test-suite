!
!
!
!

program main
  integer::a=5,i
  !$omp parallel firstprivate(a)
    !$omp do
      do i=1,10
        !$omp task
          if (a.eq.5) then
            a=a+i
          else
            print *,"NG:",i,"a=",a
          end if
        !$omp end task
        !$omp taskwait
        if (a.ne.5) then
           print *,"NG:",i,"a=",a
        end if
      end do
  !$omp end parallel

  if (a.ne.5) then
    print *,"NG:a=",a
  end if
  print *,"pass"
end program main
