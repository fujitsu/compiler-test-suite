module m
procedure(logical)::aaa
procedure(real)::bbb
end module
module m2
use m
private
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
end 
module m5
use m
use m2
use m3
use m4
private
end 
function aaax() result(a)
use m
use m2
use m3
use m4
use m5
a=1
end function
function bbbx() result(a)
use m
use m2
use m3
use m4
use m5
a=1
end function
function cccx() result(a)
use m
use m2
use m3
use m4
use m5
a=1
end function
if (abs(aaax()+bbbx()+cccx()-3)>0.0001) print *,101
print *,'pass'
end
logical function aaa()
aaa=.true.
end 
real    function bbb()
bbb=1.
end 
character function ccc()
ccc='1'
end
