module mod01
implicit none
  type ty02
    integer :: int02
  end type
  type ty01
    type(ty02),pointer :: struct02
  end type
  type(ty01),protected :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01%struct02)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%struct02)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  call sub01(struct01%struct02%int02)
  if (struct01%struct02%int02 == 1) then
    print *,"pass01"
  else
    print *,"ng01"
  end if
  call sub02(struct01%struct02%int02)
  if (struct01%struct02%int02 == 2) then
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