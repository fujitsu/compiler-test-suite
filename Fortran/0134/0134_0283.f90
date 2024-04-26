module m1
integer,target::t=1
contains
function f() result(r)
integer,pointer :: r
r=>t
end function
end
use m1
integer,pointer ::p
p=>t
if (.not.associated(f(),p))print *,101
print *,'pass'
end

