module mod01
implicit none
  type ty01
    integer :: int01
  end type
  type(ty01),protected,pointer :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  call sub01(struct01%int01)
  call sub02(struct01%int01)
  print *,"pass"

  call mod_sub02()

contains
  subroutine sub01(p1)
    integer,intent(out) :: p1
    p1 = 1
  end subroutine
  subroutine sub02(p1)
    integer,intent(inout) :: p1
    p1 = 2
  end subroutine
end
