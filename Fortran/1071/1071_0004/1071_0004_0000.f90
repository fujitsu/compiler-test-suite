  
program main
  implicit none
  interface
  subroutine test(i)
  real :: i
  end subroutine
  end interface
  call test(1.0)
end program
!
!
!
  subroutine sub(f)
  implicit none
    call f
  end subroutine sub
