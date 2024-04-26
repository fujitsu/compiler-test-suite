module mod
  implicit none
  integer,private :: number
  private showNumber
  public init, calc
contains
  subroutine showNumber()
    print *, "Number is", number
  end subroutine showNumber
  subroutine init()
    number = 0
  end subroutine init
  subroutine calc
    number = number + 1
    call showNumber()
  end subroutine calc
end module mod

program main
  use mod
  implicit none
  integer i
  call init
  do i=1, 5
    call calc
  end do
end program main
