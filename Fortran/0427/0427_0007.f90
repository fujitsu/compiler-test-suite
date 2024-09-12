module mod
integer x,y
namelist /aa/x,y
end 

module mod1
use mod,xx=>aa,yy=>aa
use mod,only:x,y
contains
subroutine sub
x=1;y=2
write(6,xx)
write(6,yy)
end subroutine
end

module mod2
use mod1,xxx=>xx,yyy=>yy
use mod,only:x,y
contains
subroutine sub1
x=1;y=2
write(6,xxx)
write(6,yyy)
end subroutine
end

use mod1
use mod2
call sub()
call sub1()
end
