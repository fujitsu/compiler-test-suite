module m
procedure(logical)::aaa
procedure(real)::bbb
end module
module m2
use m
procedure(character)::ccc
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
public:: k
integer::k=2
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
use m
use m2
use m3
use m4
use m5
use m6
a=1
if (k/=2) print *,201
end function
function bbb() result(a)
use m
use m2
use m3
use m4
use m5
use m6
a=1
if (k/=2) print *,201
end function
function ccc() result(a)
use m
use m2
use m3
use m4
use m5
use m6
a=1
if (k/=2) print *,201
end function
if (abs(aaa()+bbb()+ccc()-3)>0.0001) print *,101
print *,'pass'
end
