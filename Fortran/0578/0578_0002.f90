module m1
   
contains
function s(p) result(r)
 procedure(),pointer,intent(in)::p
 r = p()
end function
end

use m1
external sub
if(s(sub) /= 1) print*, 101

rewind 1
read(1,*) n
if (n/=9) print *,201
print *,'PASS'
end

function sub()
integer::n=9
write(1,*) n
sub = 1
end function
