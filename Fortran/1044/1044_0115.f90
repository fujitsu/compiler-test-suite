module mod
type aa
character(len=5)::ch
end type
contains
function ddd() result(res)
type(aa)::res
res%ch=' word'
end function
end
use mod
type(aa)::typ
typ=ddd()
if(typ%ch.ne.' word') print *,'NG'
print *,'pass'
end

