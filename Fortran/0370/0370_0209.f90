
module mod
  type, bind(c) :: mtp1
     integer(kind=4) :: ma = 2
     integer(kind=4) :: mb = 3
     integer(kind=4),dimension(2,3) :: mc = reshape((/1,2,3,4,5,6/),(/2,3/))
  end type mtp1
  type(mtp1),target :: m1
  type(mtp1),pointer :: mp1=>m1
end module mod

subroutine sub
  use mod
  type(mtp1),save,target :: t1
  type(mtp1),pointer :: p1=>t1
  type(mtp1),pointer :: p2=>m1

  m1%mc(2,1)=44
  
  print *, p1
  print *, p2
  print *, mp1
end subroutine sub

program xyz
  call sub
end program xyz

