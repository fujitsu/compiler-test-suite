module mod01
implicit none
  type ty01
    character(len=10),pointer :: char01
  end type
  type(ty01),protected,pointer :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01)
    allocate(struct01%char01)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%char01)
    deallocate(struct01)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  struct01%char01 = "0"
  write(struct01%char01,*) 1
  print *,"pass"

  call mod_sub02()
end
