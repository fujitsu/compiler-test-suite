!
!
!
!

subroutine sub
  integer::a,i
  a=5
  !$omp do
  do i=1,10
    !$omp task
      if (a.eq.5) then
        a=a+i
      else
        print *,"NG:",i,"a=",a
      end if
    !$omp end task
  end do
  !$omp taskwait
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
