module mod
  type, bind(c) :: modtp1
     integer(kind=4) :: ma(2) = 1
     integer(kind=4) :: mb = 3
  end type modtp1
end module

subroutine sub1()
  type, bind(c) ::  subtp1
     integer(kind=8) :: ss1 = 100
  end type subtp1
  type(subtp1) st1

  print *, st1
end subroutine

program main
use mod
  type, bind(c) :: tp1
     real(kind=8) :: ra1 = 3.0_8
  end type tp1

  type(tp1) t1
  type(modtp1) mt1

  print *, t1
  print *, mt1
  call sub1()
end
