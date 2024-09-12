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
   complex       :: dc01(1)
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

use mod01

if (mifunc([1])                        .ne.'pass') print *,'error 01'
if (mifunc([integer :: real(1)       ]).ne.'pass') print *,'error 02'
if (mifunc([integer :: cmplx(1)      ]).ne.'pass') print *,'error 03'
if (mifunc([integer :: [real    :: 1]]).ne.'pass') print *,'error 04'
if (mifunc([integer :: [complex :: 1]]).ne.'pass') print *,'error 05'

if (mifunc([1, 2])                                     .ne.'pass') print *,'error 06'
if (mifunc([integer :: real(1),  cmplx(1)            ]).ne.'pass') print *,'error 07'
if (mifunc([integer :: cmplx(1), real(1)             ]).ne.'pass') print *,'error 08'
if (mifunc([integer :: [real    :: 1], [complex :: 1]]).ne.'pass') print *,'error 09'
if (mifunc([integer :: [complex :: 1], [real    :: 1]]).ne.'pass') print *,'error 10'

print *,'pass'

end

function mifunc01(di01) result(mirst01)
 integer       :: di01(1)
 character (4) :: mirst01
 mirst01 = 'pass'
end function

function mifunc02(dr01) result(mirst02)
 real          :: dr01(1)
 character (4) :: mirst02
 mirst02 = 'err1'
end function

function mifunc03(dl01) result(mirst03)
 complex       :: dc01(1)
 character (4) :: mirst03
 mirst03 = 'err2'
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
