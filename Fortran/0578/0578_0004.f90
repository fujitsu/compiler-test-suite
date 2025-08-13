module m1

interface   
function s(p) result(r)
 procedure(),pointer,intent(in)::p
end
end interface
end

use m1
external sub
if(s(sub) /= 1) print*, 101

rewind 3
read(3,*) n
if (n/=9) print *,201
print *,'PASS'
end

function sub()
integer::n=9
write(3,*) n
sub = 1
end function

function s(p) result(r)
 procedure(),pointer,intent(in)::p
 r = p()
end
