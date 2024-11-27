module mod01
 contains
  subroutine m01sub01()
   procedure(m01s01_ent01) :: ps01
   procedure(m01s01_ent01),pointer :: ps01p
   entry m01s01_ent01()
   ps01p => ps01
   ps01p => ps01p
  end subroutine
  subroutine m01sub02()
   procedure(m01s01_ent01)          :: pp01
   procedure(m01s01_ent01), pointer :: pp01p
   pp01p => pp01
   pp01p => pp01p
  end subroutine
end module

use mod01

procedure(m01s01_ent01)          :: px01
procedure(m01s01_ent01), pointer :: px01p

px01p => px01
px01p => px01p

end

subroutine ps01()
end subroutine

subroutine pp01()
end subroutine

subroutine px01()
 entry ent01()
 procedure(ent01)          :: pr01
 procedure(ent01), pointer :: pr01p
 pr01p => pr01
 pr01p => pr01p
end subroutine

subroutine pr01()
end subroutine
