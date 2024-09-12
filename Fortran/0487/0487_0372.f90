module m1
integer,protected,target:: a1
integer,          target:: a2
end
use m1
integer,pointer         :: p1
integer,pointer         :: p2
data p2/ a2 /
if (associated(p2,a2)) then
else
print *,201
endif
print *,'pass'
end
