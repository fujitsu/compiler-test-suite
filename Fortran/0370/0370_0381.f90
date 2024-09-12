
module mod
  type tp1
     sequence
     integer(kind=2) :: s0 = 100
     procedure(sub), public,pointer,nopass :: pp1 =>sub
     procedure(sub), private,pointer,nopass :: pp2 =>sub
  end type tp1
contains
  subroutine sub(x)
    type(tp1) :: x
    print *, x%s0
  end subroutine sub
end module mod

program xyz
  use mod
  type(tp1) :: t1

  call t1%pp1(t1)
end program xyz

