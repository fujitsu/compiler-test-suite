module m
procedure(logical),pointer::aaa
procedure(real),pointer::bbb
end module
module m2
use m
private
procedure(character),pointer::ccc
end 
module m3
use m
use m2
use m
private
end 
module m4
use m
use m2
use m3
private
end 
module m5
use m
use m2
use m3
use m4
private
end 
module m6
use m
use m2
use m3
use m4
use m5
private
end 
function aaa() result(a)
use m,only:bbb
use m2
use m3
use m4
use m5
use m6
a=1
end function
function bbb() result(a)
use m,only:aaa
use m2
use m3
use m4
use m5
use m6
a=1
end function
function ccc() result(a)
use m
use m3
use m4
use m5
use m6
a=1
end function
if (abs(aaa()+bbb()+ccc()-3)>0.0001) print *,101
print *,'pass'
end
