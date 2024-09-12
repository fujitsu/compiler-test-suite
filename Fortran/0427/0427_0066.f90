module mo1
interface aaa
function ifun(i)
end function
end interface
end
function ifun(i)
ifun=i
end function
module m02
use mo1
private :: ifun
end
module m03
use mo1,only:bbb=>aaa,aaa
private ::aaa
end

use m02
use m03
print *,'pass'
end
