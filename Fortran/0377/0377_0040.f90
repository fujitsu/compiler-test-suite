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

if (mifunc([.true.])                    .ne.'pass') print *,'error 01'
if (mifunc([logical :: .true.         ]).ne.'pass') print *,'error 02'
if (mifunc([logical :: logical(.true.)]).ne.'pass') print *,'error 03'
if (mifunc([logical :: [.true.]       ]).ne.'pass') print *,'error 04'

if (mifunc([.true., .true.                                     ]).ne.'pass') print *,'error 05'
if (mifunc([logical :: .true., .true.                          ]).ne.'pass') print *,'error 06'
if (mifunc([logical :: logical(.true.), logical(.true.)        ]).ne.'pass') print *,'error 07'
if (mifunc([logical :: [logical :: .true.], [logical :: .true.]]).ne.'pass') print *,'error 08'

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
 complex       :: dc01(1)
 character (4) :: mirst03
 mirst03 = 'err3'
end function

function mifunc04(dl01) result(mirst04)
 logical       :: dl01(1)
 character (4) :: mirst04
 mirst04 = 'pass'
end function

function mifunc05(ds01) result(mirst05)
 character     :: ds01(1)
 character (4) :: mirst05
 mirst05 = 'err4'
end function
