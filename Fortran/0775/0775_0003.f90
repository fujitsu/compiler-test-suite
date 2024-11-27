      module m
      procedure(ifun),pointer::aaa
type tt
integer aaa
end type
contains
function ifun() result(aaa)
type(tt) :: aaa
aaa%aaa=100
end function
      end module

module mod1
use m
private
end

module mod2
use m,only : aaa,yy=>tt,jfun=>ifun
use m,only : bbb=>aaa,vv=>tt,vfun=>ifun
use m,only : ccc=>aaa
private:: aaa,yy,jfun,bbb
end

module mod
use mod1
use mod2
end

use mod
type(vv) :: iii
ccc=>vfun
iii=ccc()
if (iii%aaa.ne.100) print *,'err'
      print *,'pass'
      end
