module m1
contains
function  s() result(c) bind(c)
character  c
entry ss() result(c)
c='1'
end function
end
use m1
if (s()/='1')print *,'error'
print *,'pass'
end
subroutine dummy
character::  c='0'
i=ichar(c)
end
