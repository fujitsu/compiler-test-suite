module mod01
implicit none
  type ty03
    integer,pointer :: int03
  end type
  type ty02
    type(ty03),allocatable :: struct03(:)
  end type
  type ty01
    type(ty02),pointer :: struct02
  end type
  type(ty01),protected :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01%struct02)
    allocate(struct01%struct02%struct03(3))
    allocate(struct01%struct02%struct03(1)%int03)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%struct02%struct03(1)%int03)
    deallocate(struct01%struct02%struct03)
    deallocate(struct01%struct02)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  struct01%struct02%struct03(1)%int03 = 0
  call sub01(struct01%struct02%struct03(1)%int03)
  if (struct01%struct02%struct03(1)%int03 == 1) then
    print *,"pass01"
  else
    print *,"ng01"
  end if
  call sub02(struct01%struct02%struct03(1)%int03)
  if (struct01%struct02%struct03(1)%int03 == 2) then
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
