module mod01
  integer :: int01(3)
end module

  use mod01
  implicit none

  call sub01(int01(1))
  print *,"pass"

contains 
  subroutine sub01(p01)
    integer :: p01
    intent(out) :: p01

    p01 = 1
  end subroutine
end
