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
  !$omp do
    do i=1,10
      !$omp task
        !$omp atomic
          a=a+1
      !$omp end task
    end do
end subroutine sub

program main
  use shvar
  implicit none
  !$omp parallel
    call sub()
  !$omp end parallel

  if (a.ne.15) then
    print *,"NG:a=",a
  end if
  print *,"pass"
end program main
