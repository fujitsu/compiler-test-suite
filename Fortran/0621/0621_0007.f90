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
intrinsic :: iabs
intrinsic :: int

integer :: i



print *,'pass'

contains

 subroutine csub01()
  interface idim
   function ifunc02(if02_arg01) result(irst02)
    integer :: if02_arg01
    integer :: irst02
   end function
  end interface
  intrinsic :: idim
  integer   :: j
  if (j.ne.0) print *,'j = ',j
 end subroutine

 subroutine csub02()
  intrinsic :: ieor
  k = ieor(1, 1)
  if (k.ne.0) print *,'k = ',k
 end subroutine

 subroutine csub03()
  interface int
   function ifunc04() result(irst04)
    integer :: irst04
   end function
  end interface
  l = int(3)
  if (l.ne.3) print *,'l = ',l
 end subroutine
end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc02(if02_arg01) result(irst02)
 integer :: if02_arg01
 integer :: irst02
 irst02 = if02_arg01
end function

function ifunc03() result(irst03)
 integer :: irst03
 irst03 = 3
end function

function ifunc04() result(irst04)
 integer :: irst04
 irst04 = 4
end function
