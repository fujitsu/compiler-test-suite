!
!
!
!

program main
  integer::a=10

  !$omp parallel
    call sub(a)
  !$omp end parallel

  print *,"pass"

end program main

subroutine sub(a)
  integer::a,i

  !$omp do
  do i=0,10
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

end subroutine sub
