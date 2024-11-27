intrinsic :: iabs
intrinsic :: dim
intrinsic :: ieor

interface iabs
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

interface ieor
 function ifunc03() result(irst03)
  integer :: irst03
 end function
end interface

interface
 function ifunc04() result(irst04)
  integer :: irst04
 end function
end interface

interface ifunc04
 function ifunc05() result(irst05)
  integer :: irst05
 end function
end interface

contains
 subroutine csub01()
  interface dim
   function ifunc02() result(irst02)
    integer :: irst02
   end function
  end interface
  print *,iabs(1)
  print *,dim(1, 2)
  print *,ieor(1, 2)
 end subroutine
end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 2
end function

function ifunc03() result(irst03)
 integer :: irst03
 irst03 = 3
end function
