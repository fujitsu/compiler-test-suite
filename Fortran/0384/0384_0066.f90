module mod
intrinsic :: sin
contains
function ifun()
ifun=1
end function
end
use mod,sssss=>sin,iiiii=>ifun
procedure(sssss),pointer :: psin
procedure(iiiii),pointer :: pfun
print *,'pass'
end
