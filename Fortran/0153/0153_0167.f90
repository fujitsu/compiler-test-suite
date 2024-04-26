module m2
interface gnr
procedure :: mfun
end interface

procedure(dim) :: pp

interface gnr
 procedure :: pp
end interface

contains
function mfun()
 mfun=23
end function
end
use m2

print *,'pass'
end
function pp(a)
pp=a
end
