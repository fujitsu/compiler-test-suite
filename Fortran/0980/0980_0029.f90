module mod01
implicit none
  type ty01
    integer :: int01(10)
  end type
  type(ty01),protected,pointer :: struct01(:)
contains
  subroutine mod_sub01()
    allocate(struct01(3))
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  call sub01(struct01(1))
  call sub02(struct01(1))

  call mod_sub02()

contains
  subroutine sub01(p1)
    type(ty01) :: p1
    intent(out) :: p1
    p1%int01 = 1
  end subroutine
  subroutine sub02(p1)
    type(ty01) :: p1
    intent(inout) :: p1
    p1%int01 = 2
  end subroutine
end
