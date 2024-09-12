module mmm
integer :: iikk
end
module mo1
use mmm
integer :: ii,kk,aa
common /com/aa
namelist /na/ iii
intrinsic sin
external exe
procedure() :: xxx
interface sss
function jfun()
end function
end interface
type tt
integer :: ii
end type
end
module m02
use mo1,only:vv=>aa,tt
use mo1,only:vvv=>iii
use mo1,only:na,sin,exe,iikk,xxx
use mo1,only:nna=>na,ifuna=>sss
private
public ::ii,nn,sssa,ifun,xxxa
end

use m02
aa=1
call sub()
end
subroutine sub()
use mo1
print *,'pass'
end
function exe()
exe=1
end
function xxx()
xxx=1
end
