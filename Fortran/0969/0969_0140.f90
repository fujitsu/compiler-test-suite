module mod01
 contains
  function func01(arg01, arg02) result(rst01)
   integer :: arg01
   real    :: arg02
   integer :: rst01
   rst01 = 0
   entry ent00(arg01, arg02) result(rst01)
   rst01 = rst01 + arg01 + int(arg02)
   entry ent02(arg01) result(rst01)
   rst01 = rst01 + arg01
   entry ent03() result(rst01)
   rst01 = rst01 + 1
  end function
end module

module mod02
 contains
  subroutine m2sub01()
   use mod01, ent01 => ent03
   use mod01, ent03 => ent02
   use mod01, ent02 => ent00
   procedure(ent01) :: pproc01
   procedure(ent02) :: pproc02
   procedure(ent03) :: pproc03

   print *,pproc01()
   print *,pproc02(12, 2.0)
   print *,pproc03(10)

  end subroutine
end module

use mod01, ent01 => ent03
use mod01, ent03 => ent02
use mod01, ent02 => ent00

use mod02

procedure(ent01), pointer :: pprocp01
procedure(ent02), pointer :: pprocp02
procedure(ent03), pointer :: pprocp03

call m2sub01()
call csub01()



contains
 subroutine csub01()
  use mod01, ent01 => ent03
  use mod01, ent03 => ent02
  use mod01, ent02 => ent00
  procedure(ent01) :: pproc01
  procedure(ent02) :: pproc02
  procedure(ent03) :: pproc03

  print *,pproc01()
  print *,pproc02(12, 2.0)
  print *,pproc03(10)

 end subroutine

end

function pproc01() result(prst01)
 integer :: prst01
 prst01 = 1
end function

function pproc02(parg01, parg02) result(prst02)
 integer :: parg01
 real    :: parg02
 integer :: prst02
 prst02 = parg01 + int(parg02)
end function

function pproc03(parg01) result(prst03)
 integer :: parg01
 integer :: prst03
 prst03 = parg01
end function
