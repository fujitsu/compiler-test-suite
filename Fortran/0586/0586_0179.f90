module boundary
implicit none

procedure(boundary_type), pointer :: bc1=>boundaryA
procedure(boundary_type), pointer :: bc2=>boundaryB
procedure(boundary_type), pointer :: bc3=>boundaryC

abstract interface
  subroutine boundary_type(i)
    integer :: i
  end subroutine
end interface

contains

subroutine boundaryA(i)
integer :: i
  print*, 'Boundary A ',i
end subroutine

subroutine boundaryB(i)
integer :: i
  print*, 'Boundary B ',i
end subroutine

subroutine boundaryC(i)
integer :: i
  print*, 'Boundary C ',i
end subroutine

subroutine comp_boundary
  call bc1(1)
  call bc2(2)
  call bc3(3)
end subroutine

end module
use boundary
type ty
 procedure(boundary_type), pointer,NOPASS :: bc1=>boundaryA
 procedure(boundary_type), pointer,NOPASS :: bc2=>boundaryB
 procedure(boundary_type), pointer,NOPASS :: bc3=>boundaryC
end type
type(ty)::obj
call comp_boundary
  call obj%bc1(1)
  call obj%bc2(2)
  call obj%bc3(3)
print*,"PASS"
end
