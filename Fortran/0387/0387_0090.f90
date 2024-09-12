module mod01
 contains
  subroutine m1sub01(dsub01, dsub02)
   interface
    subroutine dsub01()
    end subroutine
    subroutine dsub02()
    end subroutine
   end interface
   procedure(dsub01), pointer :: pds1p
   type mty01
    procedure(dsub02), pointer, nopass :: pds2pn
   end type
   type(mty01) :: mtt01
   mtt01 = mty01(dsub01)
   pds1p => dsub02
  end subroutine
end module

use mod01
interface
 subroutine osub01
 end subroutine
 subroutine osub02
 end subroutine
end interface
procedure(osub01) , pointer :: pos1p
type ty01
 procedure(osub02) , pointer, nopass :: pos2p
end type
type(ty01) :: tt01

pos1p => osub02
tt01  =  ty01(osub01)

call osub01()
call osub02()
call pos1p()
call tt01%pos2p()

call m1sub01(osub01, osub02)
call csub01(osub01, osub02)

print *,'pass'

contains
 subroutine csub01(dsub01, dsub02)
  use mod01
  interface
   subroutine dsub01()
   end subroutine
   subroutine dsub02()
   end subroutine
  end interface
  procedure(dsub01), pointer :: pds1p
  type cty01
   procedure(dsub02), pointer, nopass :: pds2pn
  end type
  type(cty01) :: ctt01
  ctt01 = cty01(dsub01)
  pds1p => dsub02
  call pds1p()
  call ctt01%pds2pn()
 end subroutine

 subroutine csub02(dsub01p, dsub02p)
  use mod01
  interface
   subroutine dsub01()
   end subroutine
   subroutine dsub02()
   end subroutine
  end interface
  procedure(dsub01), pointer :: pds1p
  procedure(dsub01), pointer :: dsub01p
  procedure(dsub02), pointer :: dsub02p
  type cty01
   procedure(dsub02), pointer, nopass :: pds2pn
  end type
  type(cty01) :: ctt01
  ctt01 = cty01(dsub01p)
  pds1p => dsub02p
  call pds1p()
  call ctt01%pds2pn()
 end subroutine

end

subroutine dsub01()
end subroutine
subroutine dsub02()
end subroutine

subroutine osub01
end subroutine
subroutine osub02
end subroutine
