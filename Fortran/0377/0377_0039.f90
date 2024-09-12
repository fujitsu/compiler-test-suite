module mod01
 interface mifunc
  function mifunc01(di01) result(mirst01)
   integer       :: di01(1)
   character (4) :: mirst01
  end function
  function mifunc02(dr01) result(mirst02)
   real          :: dr01(1)
   character (4) :: mirst02
  end function
  function mifunc03(dl01) result(mirst03)
   complex       :: dl01(1)
   character (4) :: mirst03
  end function
  function mifunc04(dl01) result(mirst04)
   logical       :: dl01(1)
   character (4) :: mirst04
  end function
  function mifunc05(ds01) result(mirst05)
   character     :: ds01(1)
   character (4) :: mirst05
  end function
 end interface
end module

module mod02
 interface mifunc2
  function mifunc06(di01) result(mirst01)
   integer       :: di01(1, 1)
   character (4) :: mirst01
  end function
  function mifunc07(dr01) result(mirst02)
   real          :: dr01(1, 1)
   character (4) :: mirst02
  end function
  function mifunc08(dl01) result(mirst03)
   complex       :: dl01(1, 1)
   character (4) :: mirst03
  end function
  function mifunc09(dl01) result(mirst04)
   logical       :: dl01(1, 1)
   character (4) :: mirst04
  end function
  function mifunc10(ds01) result(mirst05)
   character     :: ds01(1, 1)
   character (4) :: mirst05
  end function
 end interface
end module

use mod01
use mod02

if (mifunc2(reshape([(1.0, 1.0)               ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 01'
if (mifunc2(reshape([complex :: int(1)        ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 02'
if (mifunc2(reshape([complex :: real(1)       ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 03'
if (mifunc2(reshape([complex :: [integer :: 1]], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 04'
if (mifunc2(reshape([complex :: [real    :: 1]], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 05'

if (mifunc2(reshape([(1.0, 1.0), (2.0, 2.0)                   ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 06'
if (mifunc2(reshape([complex :: int(1),  real(1)              ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 06'
if (mifunc2(reshape([complex :: real(1), int(1)               ], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 06'
if (mifunc2(reshape([complex :: [integer :: 1], [real    :: 1]], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 06'
if (mifunc2(reshape([complex :: [real    :: 1], [integer :: 1]], [2,2], [(0.0, 0.0)])).ne.'pass') print *,'error 06'

print *,'pass'

end

function mifunc01(di01) result(mirst01)
 integer       :: di01(1)
 character (4) :: mirst01
 mirst01 = 'err1'
end function

function mifunc02(dr01) result(mirst02)
 real          :: dr01(1)
 character (4) :: mirst02
 mirst02 = 'err2'
end function

function mifunc03(dl01) result(mirst03)
 complex       :: dl01(1)
 character (4) :: mirst03
 mirst03 = 'pass'
end function

function mifunc04(dl01) result(mirst04)
 logical       :: dl01(1)
 character (4) :: mirst04
 mirst04 = 'err3'
end function

function mifunc05(ds01) result(mirst05)
 character     :: ds01(1)
 character (4) :: mirst05
 mirst05 = 'err4'
end function

function mifunc06(di01) result(mirst01)
 integer       :: di01(1, 1)
 character (4) :: mirst01
 mirst01 = 'err1'
end function

function mifunc07(dr01) result(mirst02)
 real          :: dr01(1, 1)
 character (4) :: mirst02
 mirst02 = 'err2'
end function

function mifunc08(dl01) result(mirst03)
 complex       :: dl01(1, 1)
 character (4) :: mirst03
 mirst03 = 'pass'
end function

function mifunc09(dl01) result(mirst04)
 logical       :: dl01(1, 1)
 character (4) :: mirst04
 mirst04 = 'err3'
end function

function mifunc10(ds01) result(mirst05)
 character     :: ds01(1, 1)
 character (4) :: mirst05
 mirst05 = 'err4'
end function

