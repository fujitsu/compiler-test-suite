

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1000
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 2
end function


intrinsic :: maxloc
intrinsic :: minloc

interface maxloc
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

interface minloc
 function ifunc02() result(irst02)
  integer :: irst02
 end function
end interface

type maxloc
 character :: array(1)
 integer   :: dim
 logical   :: mask(1) = (/.true./)
 integer   :: kind = 1
end type

type minloc
 character :: c01
end type

type (maxloc) :: ss
print *,'pass'

i=minloc((/'a'/), 1)
if (i.eq.1000) print *,'ng1'

end
subroutine sss()
print *,minloc((/'a'/), 1)
end
