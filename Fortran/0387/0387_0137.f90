module mod01
 contains
  function m1func01(di01) result(m1rst01)
   integer :: di01
   character(di01) :: m1rst01
   entry m1ent01(di01) result(m1rst01)
   m1rst01 = 'pass'
  end function
  function m1func02() result(m2rst01)
   character(4), allocatable :: m2rst01
   entry m1ent02() result(m2rst01)
   allocate(character (4) :: m2rst01)
   m2rst01 = 'pass'
  end function
  function m1func03() result(m3rst01)
   character(4), pointer     :: m3rst01
   character(4), target      :: cht01
   entry m1ent03() result(m3rst01)
   m3rst01 => cht01
   cht01 = 'pass'
  end function
  subroutine m1sub01()
   call m1sub04(m1func01(4))
   call m1sub04(m1ent01(4))
   call m1sub04(m1func02())
   call m1sub04(m1ent02())
  end subroutine
  subroutine m1sub02()
   procedure(m1func01) :: pmproc01
   procedure(m1ent01)  :: pmproc02
   procedure(m1func02) :: pmproc03
   procedure(m1ent02)  :: pmproc04
   procedure(m1func03) :: pmproc05
   procedure(m1ent03)  :: pmproc06
   call m1sub04(pmproc01(4))
   call m1sub04(pmproc02(4))
  end subroutine
  subroutine m1sub03()
   procedure(m1func01), pointer :: pmprocp01
   procedure(m1ent01) , pointer :: pmprocp02
   procedure(m1func02), pointer :: pmprocp03
   procedure(m1ent02) , pointer :: pmprocp04
   procedure(m1func03), pointer :: pmprocp05
   procedure(m1ent03) , pointer :: pmprocp06
   pmprocp01 => m1func01
   pmprocp02 => m1ent01
   pmprocp03 => m1func02
   pmprocp04 => m1ent02
   pmprocp05 => m1func03
   pmprocp06 => m1ent03
   call m1sub04(pmprocp01(4))
   call m1sub04(pmprocp02(4))
   call m1sub04(pmprocp03())
   call m1sub04(pmprocp04())
  end subroutine
  subroutine m1sub04(dch01)
   character(4) :: dch01
   if (dch01.ne.'pass') print *,'nopass'
  end subroutine
end module

use mod01

procedure(m1func01), pointer :: pmprocp01
procedure(m1ent01) , pointer :: pmprocp02
procedure(m1func02), pointer :: pmprocp03
procedure(m1ent02) , pointer :: pmprocp04
procedure(m1func03), pointer :: pmprocp05
procedure(m1ent03) , pointer :: pmprocp06
procedure(m1func01)          :: pmproc01
procedure(m1ent01)           :: pmproc02
procedure(m1func02)          :: pmproc03
procedure(m1ent02)           :: pmproc04
procedure(m1func03)          :: pmproc05
procedure(m1ent03)           :: pmproc06

pmprocp01 => m1func01
pmprocp02 => m1ent01
pmprocp03 => m1func02
pmprocp04 => m1ent02
pmprocp05 => m1func03
pmprocp06 => m1ent03

call m1sub01()
call m1sub02()
call m1sub03()

call m1sub04(m1func01(4))
call m1sub04(m1ent01(4))
call m1sub04(m1func02())
call m1sub04(m1ent02())
call m1sub04(pmproc01(4))
call m1sub04(pmproc02(4))
call m1sub04(pmprocp01(4))
call m1sub04(pmprocp02(4))
call m1sub04(pmprocp03())
call m1sub04(pmprocp04())

print *,'pass'

end

function pmproc01(di01) result(m1rst01)
 integer :: di01
 character(di01) :: m1rst01
 m1rst01 = 'pass'
end function

function pmproc02(di01) result(m1rst01)
 integer :: di01
 character(di01) :: m1rst01
 m1rst01 = 'pass'
end function

function pmproc03() result(m2rst01)
 character(4), allocatable :: m2rst01
 allocate(character (4) :: m2rst01)
 m2rst01 = 'pass'
end function

function pmproc04() result(m2rst01)
 character(4), allocatable :: m2rst01
 allocate(character (4) :: m2rst01)
 m2rst01 = 'pass'
end function

function pmproc05() result(m3rst01)
 character(:), pointer     :: m3rst01
 character(4), target      :: cht01
 m3rst01 => cht01
 cht01 = 'pass'
end function

function pmproc06() result(m3rst01)
 character(:), pointer     :: m3rst01
 character(4), target      :: cht01
 m3rst01 => cht01
 cht01 = 'pass'
end function
