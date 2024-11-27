module mod01
implicit none
  type ty02
    character(len=10) :: char02(3)
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

  struct01%struct02%char02(1) = "0"
  write(struct01%struct02%char02(1),*) 1
  print *,"pass"

  call mod_sub02()
end
