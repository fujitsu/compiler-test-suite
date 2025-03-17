!
!
!
!

module shvar
  implicit none
  integer::a=5
end module shvar

subroutine sub
  use shvar
  implicit none
  integer::i
  !$omp do firstprivate(a)
  do i=1,10
    !$omp task
      if (a.eq.5) then
        a=a+i
      else
        print *,"NG(1):",i,"a=",a
      end if
    !$omp end task
    !$omp taskwait
    if (a.ne.5) then
      print *,"NG(2):",i,"a=",a
    end if
  end do
end subroutine sub

program main
  use shvar
  implicit none
  !$omp parallel
    call sub()
  !$omp end parallel

  print *,"pass"
end program main
