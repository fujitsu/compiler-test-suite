
module mod
  type tp1
     sequence
     integer(kind=2) :: s0 = 100
     procedure(sub), pointer,pass(y) :: pp1 =>sub
  end type tp1
contains

  subroutine sub(x,y)
    type(tp1),optional :: x
    type(tp1) :: y

    if (present(x)) print *, "x:",x%s0
    print *, "y:",y%s0
  end subroutine sub
end module mod

program xyz
  use mod
  type(tp1) :: t1

  call t1%pp1(t1)
end program xyz

