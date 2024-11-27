module mod01
implicit none
  type ty02
    integer,pointer :: int02
  end type
  type ty01
    type(ty02) :: struct02
  end type
  type(ty01),protected :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01%struct02%int02)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%struct02%int02)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  call sub01(struct01%struct02%int02)
  call sub02(struct01%struct02%int02)

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
