!
!
!
!

subroutine sub
  integer::a=5,i

  !$omp do private(a)
  do i=0,10
    a=10
    !$omp task
      if (a.eq.10) then
        a=a+i
      else
        print *,"NG:",i,"a=",a
      end if
    !$omp end task
    !$omp taskwait
    if (a.ne.10) then
      print *,"NG:",i,"a=",a
    end if
  end do
  if (a.ne.5) then
    print *,"NG:a=",a
  end if
end subroutine sub

program main
  !$omp parallel
    call sub()
  !$omp end parallel

  print *,"pass"
end program main
