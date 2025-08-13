module test
  implicit none
  private
  public :: setup
  abstract interface
    subroutine isub
    end subroutine isub
  end interface
  public:: sub_p
  procedure(isub), pointer :: sub_p => NULL()
contains
  subroutine setup
    sub_p => sub
  end subroutine setup
  subroutine sub
    write(44,*) "OK"
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
