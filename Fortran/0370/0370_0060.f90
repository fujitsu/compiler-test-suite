module mod
  type tp1
     sequence
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42(3)
  end type tp1
  type tp2
     sequence
     integer(kind=4) :: i43(2)
  end type tp2
  type tc
     sequence
     type(tp1) :: t1(2)
     type(tp2) :: t2(3)
     integer(kind=8) :: ii(2) = 10
  end type tc
end module

subroutine sub (bb)
use mod
  type(tc),dimension(3) :: bb
  print *, bb
end subroutine sub

program main
use mod
  type(tc),dimension(3) :: aa
  call sub(aa)
end
