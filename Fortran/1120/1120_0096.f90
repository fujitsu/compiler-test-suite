module shvar
  implicit none
save
contains
subroutine sub
  implicit none
  integer::i
  integer::a=5
  common /com/a
  !$omp do firstprivate(/com/)
  do i=1,10
    !$omp task
      if (a.eq.5) then
        a=a+i
      else
        print *,"NG(1):",i," a=",a
      end if
    !$omp end task
    !$omp taskwait
    if (a.ne.5) then
      print *,"NG(2):",i," a=",a
    end if
  end do
end subroutine sub
end module shvar

program main
  use shvar
  implicit none
  !$omp parallel
    call sub()
  !$omp end parallel

  print *,"pass"
end program main
