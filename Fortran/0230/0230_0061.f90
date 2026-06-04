module mod01
 type mty01
  integer :: mi01
 end type
 type mty02
  integer :: mi02
 end type
end module

module mod02
 interface mifunc
  function mifunc01(dty01) result(mirst01)
   use mod01
   type (mty01) :: dty01
   type (mty01) :: mirst01
  end function
  function mifunc02(dty02) result(mirst02)
   use mod01
   type (mty02) :: dty02
   type (mty02) :: mirst02
  end function
  function mifunc01p(dty01) result(mirst01)
   use mod01
   procedure(type(mty01)),pointer :: dty01
   procedure(type(mty01)),pointer:: mirst01
  end function
  function mifunc02p(dty02) result(mirst02)
   use mod01
   procedure(type(mty02)),pointer :: dty02
   procedure(type(mty02)),pointer:: mirst02
  end function
 end interface
end module

module mod03
 use mod02
 type mty03
  procedure(mifunc01), pointer, nopass :: pmifuncp01
  procedure(mifunc02), pointer, nopass :: pmifuncp02
 end type
 contains
  function m3func01(di01) result(mrst01)
   use mod02
   integer :: di01
   procedure(mifunc01),pointer :: mrst01
   mrst01 => mifunc01
  end function
  function m3func02(dr01) result(mrst02)
   use mod02
   real :: dr01
   procedure(mifunc02),pointer :: mrst02
   entry ent01(dr01) result(mrst02)
   mrst02 => mifunc02
  end function
  function m3func01x(di01) result(mrst01)
   procedure(m3func01),pointer,intent(in) :: di01   
   procedure(m3func01),pointer :: mrst01
   mrst01 => di01
  end function
  function m3func02x(dr01) result(mrst02)
   procedure(m3func02),pointer,intent(in) :: dr01  
   procedure(m3func02),pointer :: mrst02
   mrst02 => dr01
  end function
end module

use mod01
use mod02
use mod03

type (mty03) :: tt03

   procedure(type(mty01)),pointer :: x1
   procedure(type(mty02)),pointer :: x2
tt03%pmifuncp01 => mifunc01
tt03%pmifuncp02 => mifunc02
write(1,*) mifunc(tt03%pmifuncp01(mty01(1)))
write(1,*) mifunc(tt03%pmifuncp02(mty02(2)))
x1=>mifunc(tt03%pmifuncp01)
x2=>mifunc(tt03%pmifuncp02)
x1=>    mifunc(m3func01(1))
x2=>    mifunc(m3func02(1.0))

write(1,*) mifunc01(tt03%pmifuncp01(mty01(1)))
write(1,*) mifunc02(tt03%pmifuncp02(mty02(2)))
x1=>    mifunc01p(tt03%pmifuncp01)
x2=>    mifunc02p(tt03%pmifuncp02)
x1=>        mifunc01p(m3func01(1))
x2=>    mifunc02p(m3func02(1.0))

rewind 1
read(1,*) k;if(k/=1) print *,2001
read(1,*) k;if(k/=2) print *,2003
read(1,*) k;if(k/=1) print *,2004
read(1,*) k;if(k/=2) print *,2005
print *,'pass'
end

function mifunc01(dty01) result(mirst01)
 use mod01
 type (mty01) :: dty01
 type (mty01) :: mirst01
 mirst01 = dty01
end function

function mifunc02(dty02) result(mirst02)
 use mod01
 type (mty02) :: dty02
 type (mty02) :: mirst02
 mirst02 = dty02
end function

  function mifunc01p(dty01) result(mirst01)
   use mod01
   procedure(type(mty01)),pointer :: dty01
   procedure(type(mty01)),pointer:: mirst01
mirst01=>dty01
  end function
  function mifunc02p(dty02) result(mirst02)
   use mod01
   procedure(type(mty02)),pointer :: dty02
   procedure(type(mty02)),pointer:: mirst02
mirst02=>dty02
  end function
