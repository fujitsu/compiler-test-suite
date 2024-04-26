module test
  implicit none
  public :: setup
  abstract interface
    subroutine isub
    end subroutine isub
  end interface
  procedure(isub), pointer, public :: sub_p => NULL()
contains
  subroutine setup
    sub_p => sub
  end subroutine setup
  subroutine sub
    write(1,*) "OK"
  end subroutine sub
end module test

program main
  use test, only: &
    sub_p, &
    setup
  call setup
  call sub_p
print *,'pass'
end program main


