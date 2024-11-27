module mod01
implicit none
  type ty03
    character(len=10),pointer :: char03
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
    allocate(struct01%struct02%struct03(1)%char03)
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%struct02%struct03(1)%char03)
    deallocate(struct01%struct02%struct03)
    deallocate(struct01%struct02)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  struct01%struct02%struct03(1)%char03 = "0"
  write(struct01%struct02%struct03(1)%char03,*) 1
  print *,"pass"

  call mod_sub02()
end
