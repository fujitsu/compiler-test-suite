module mod01
implicit none
  type ty01
    integer,pointer :: int01(:)
  end type
  type(ty01),protected,pointer :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01)
    allocate(struct01%int01(10))
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%int01)
    deallocate(struct01)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  call sub01(struct01%int01(1))
  if (struct01%int01(1) == 1) then
    print *,"pass01"
  else
    print *,"ng01"
  end if
  call sub02(struct01%int01(1))
  if (struct01%int01(1) == 2) then
    print *,"pass02"
  else
    print *,"ng02"
  end if

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
