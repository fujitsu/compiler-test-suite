module mod01
  type ty01
    integer :: int01
  end type
  type(ty01) :: struct01
end module

  use mod01
  implicit none

  call sub01(struct01%int01)
  print *,"pass"

contains 
  subroutine sub01(p01)
    integer :: p01
    intent(out) :: p01

    p01 = 1
  end subroutine
end
