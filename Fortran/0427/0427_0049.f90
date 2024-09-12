module mo1
integer :: ii=10
end
module m02
use mo1
private 
public::ifun02,ifun0a
contains
function ifun02() result(iarray)
integer iarray(ii)
iarray=1
ii=2
end function
function ifun0a() result(iarray)
integer iarray(ii)
iarray=1
ii=2
end function
end
module m03
use mo1
private 
end

use m02
use m03
if (1.eq.2) print *,ifun02()
if (1.eq.2) print *,ifun0a()
print *,'pass'
end
