module m1
integer,target::t
contains
function f() result(r)
integer,pointer::r
r=>t
end
end
use m1
write(18,*) 1
rewind 18
read(18,*) f()
if (t/=1) print *,101
print *,'pass'
end
