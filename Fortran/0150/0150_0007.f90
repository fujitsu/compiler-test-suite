module test
  implicit none
  public
  abstract interface
    subroutine isub
    end subroutine isub
  end interface
  procedure(isub), pointer, private:: sub_p => NULL()
contains
  subroutine setup
    sub_p => sub
    call sub_p
  end subroutine setup
  subroutine sub
    write(1,*) "OK"
  end subroutine sub
end module test

program main
  use test, only: &
    setup
  call setup
  sub_p=1
  if (sub_p/=1) print *,1
print *,'pass'
end program main
