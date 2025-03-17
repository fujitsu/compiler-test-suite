module mod
 integer :: iii=200,kkk=300
end module
module mod0
 integer :: jjj=100
end module
module mod1
 use mod,only:iii
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj
end module
module mod2a
 use mod1,only:jjj
end module
module mod3
 use mod2,only:jjj
 use mod2a,only:jjj
end module

module mod4
 use mod,only:kkk,nnn=>iii
 integer :: iii=500,xxx=400
end module

use mod4,only:iii=>nnn
use mod3
use mod4,only:xxx
if(100.ne.jjj) write(6,*) "NG"
if(200.ne.iii) write(6,*) "NG"
if(400.ne.xxx) write(6,*) "NG"
print *,"pass"
end
