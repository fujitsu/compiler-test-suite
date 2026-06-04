  
program main
  implicit none
  interface
  subroutine test(i)
  integer :: i
  end subroutine
  end interface
  call test(1)
end program
!
!
!
  subroutine sub(f)
  implicit none
    call f
  end subroutine sub
