module m2
interface gnr
procedure :: mfun
end interface

contains
function mfun()
 mfun=23
end function

end module m2
module m3
use m2

procedure(dim) :: pp

interface gnr
 procedure :: pp
end interface

end module m3
use  m3
print *,'pass'
end

function pp(a)
pp=a
end
