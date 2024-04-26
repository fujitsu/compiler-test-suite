module m1
contains
function ifun() result(c1)
character (:),pointer ::c1
character (:),pointer ::c2
entry ent() result(c2)
allocate(character(2)::c2)
c2='xy'
end function
end
use m1
if (ifun()/='xy')print *,101
if (ent ()/='xy')print *,102
print *,"pass"
end
