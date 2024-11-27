module mod01
implicit none
  type ty03
    character(len=10),allocatable :: char03(:)
  end type
  type ty02
    type(ty03),pointer :: struct03
  end type
  type ty01
    type(ty02),allocatable :: struct02(:)
  end type
  type(ty01),protected :: struct01
contains
  subroutine mod_sub01()
    allocate(struct01%struct02(3))
    allocate(struct01%struct02(1)%struct03)
    allocate(struct01%struct02(1)%struct03%char03(3))
  end subroutine
  subroutine mod_sub02()
    deallocate(struct01%struct02(1)%struct03%char03)
    deallocate(struct01%struct02(1)%struct03)
    deallocate(struct01%struct02)
  end subroutine
end

  use mod01
  implicit none
  call mod_sub01()

  struct01%struct02(1)%struct03%char03(1) = "0"
  write(struct01%struct02(1)%struct03%char03(1),*) "1"
  print *,"pass"

  call mod_sub02()
end
