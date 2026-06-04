function psin(arg1) result(ret)
  real :: arg1,ret
  ret = arg1
end function
module mod
  intrinsic :: sin
  contains
  function ifun(arg1)
    integer :: arg1
    ifun=arg1
  end function
end module

use mod,sssss=>sin,iiiii=>ifun
procedure(sssss),pointer :: psin
procedure(iiiii),pointer :: pfun
psin=>sssss
pfun=>iiiii
if (abs(sin(1.0)-psin(1.0)) > 6.0E-8) print *,'fail'
if ( 1 .ne. pfun(1)) print *,'fail'
print *,'pass '
end
