module test
  implicit none
private
  abstract interface
    subroutine isub
    end subroutine isub
  end interface
  procedure(isub), pointer :: sub_p => NULL()
public sub_p,setup
contains
  subroutine setup
    sub_p => sub
  end subroutine setup
  subroutine sub
    write(1,*) "OK"
  end subroutine sub
end module test

program main
  use test
  call setup
  call sub_p
print *,'pass'
end program main


