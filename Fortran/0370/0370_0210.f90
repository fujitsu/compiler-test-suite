
module mod
  type mtp1
     integer(kind=4) :: ma = 2
     integer(kind=4) :: mb = 3
  end type mtp1

  type, extends(mtp1) :: mtp2
     integer(kind=4) :: mc = 4
  end type mtp2

  type, extends(mtp2) :: mtp3
     integer(kind=4) :: md = 5
     integer(kind=4) :: me(2) = (/6,7/)
     integer(kind=4) :: mf = 10
  end type mtp3
  type(mtp1),target :: m1
  type(mtp2),target :: m2
  type(mtp3),target :: m3
  type(mtp1),pointer :: mp1=>m1
  type(mtp2),pointer :: mp2=>m2
  type(mtp3),pointer :: mp3=>m3
end module mod

program xyz
  use mod
  type(mtp1),target :: t1
  type(mtp2),target :: t2
  type(mtp3),target :: t3
  type(mtp1),pointer :: p1=>t1
  type(mtp2),pointer :: p2=>t2
  type(mtp3),pointer :: p3=>t3
  type(mtp1),pointer :: p4=>m1
  type(mtp2),pointer :: p5=>m2
  type(mtp3),pointer :: p6=>m3

  t1%ma=22
  t2%ma=33
  t3%ma=44

  m3%mf=55
  
  print *, p1
  print *, p2
  print *, p3
  print *, p4
  print *, p5
  print *, p6
  print *, mp1
  print *, mp2
  print *, mp3
end program xyz

