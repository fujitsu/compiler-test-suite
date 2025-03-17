module mod
 integer :: iii=100
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

module mod0v
 integer :: jjjv=100
end module
module modv
 integer :: iiiv=100
end module
module mod1v
 use mod0v,only:jjjv
 use modv,only:iiiv
 use mod,only:iii
 use mod0,only:jjj
 integer rrr
end module
module mod2v
 use mod1v,only:jjjv
end module

module mod2av
 use mod1v,only:jjjv
 integer ::vvv
end module

module mod2avv
 use mod2av,only:vvv
end 
module mod3v
 use mod2v,only:jjjv
 use mod2av,only:jjjv
end module

module mod4
 use mod2,only:jjj
 use mod2a,only:jjj
 use mod2v,only:jjjv
 use mod2av,only:jjjv
end module

use mod2avv
use mod4
if(100.ne.jjj) write(6,*) "NG"
print *,"pass"
end
