module m1
integer,target::t
contains
function f() result(r)
integer,pointer::r
r=>t
end
end
use m1
write(1,*) 1
rewind 1
read(1,*) f()
if (t/=1) print *,101
print *,'pass'
end
