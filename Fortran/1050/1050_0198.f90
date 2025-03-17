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
  !$omp do lastprivate(a)
  do i=1,10
    a=10
    !$omp task
      if (a.eq.10) then
        a=a+i
      else
        print *,"NG:",i,"a= ",a
      end if
    !$omp end task
  end do
end subroutine sub

program main
  use shvar
  implicit none
  !$omp parallel
    call sub()
  !$omp end parallel

  if (a.ne.10) then
    print *,"NG:a=",a
  end if
  print *,"pass"
end program main
