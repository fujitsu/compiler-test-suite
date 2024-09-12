
module mod
  type, abstract :: mtp1
     integer(kind=4) :: ma = 2
     integer(kind=4) :: mb = 3
  end type mtp1

  type, extends(mtp1) :: mtp2
     integer(kind=4) :: mc = 4
  end type mtp2

  type(mtp2),target :: m1
  type(mtp2),pointer :: mp1=>m1
end module mod

program xyz
  use mod
  type(mtp2),target :: t1
  type(mtp2),pointer :: p1=>t1
  type(mtp2),pointer :: p2=>m1

  m1%mc=44
  
  print *, p1
  print *, p2
  print *, mp1
end program xyz

