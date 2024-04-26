module m1
contains
function ifun() result(c1)
character (:),pointer ::c1(:)
character (:),pointer ::c2(:)
entry ent() result(c2)
allocate(character(2)::c2(2))
c2=['xy','ab']
end function
end
use m1
if (any(ifun()/=['xy','ab']))print *,101
if (any(ent ()/=['xy','ab']))print *,102
print *,"pass"
end
