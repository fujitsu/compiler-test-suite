module m1
integer:: n=0

contains
function s1(p) result(r)
procedure(),pointer,intent(in)::p
r = p()
end
end module

use m1
procedure ():: e

if (s1(e)/=1) print *,101
print *,'PASS'
end

function e()
use m1
n=n+1
e = n
end
