module mod
 integer :: iii=100
 integer :: iii2=100
end module
module mod0
 integer :: jjj=100
 integer :: jjj2=100
end module
module mod1
 use mod,only:iii,iii2
 use mod0,only:jjj,jjj2
 integer :: kkk=100,vvv
 equivalence (kkk,vvv)
 private ::kkk
end module
module mod1a
 use mod,only:iii,iii2
 use mod0,only:jjj
end module
module mod1b
 use mod0,only:jjj
 use mod,only:jjj2=>iii,iii2
end module

module mod2
 use mod1,only:jjj,jjj2
end module
module mod2a
 use mod1,only:jjj,jjj2,vvv
end module
module mod2b
 use mod1,only:jjj,jjj2,vvv
 use mod1,only:cvvvv=>iii2
 private cvvvv,vvv
end module
module mod2c
 use mod1a,only:jjj
 use mod1,only:jjj,jjj2,vvv
 integer :: xxx=100
end module
module mod2d
 use mod1b,only:jjj
 use mod1,only:jjj,jjj2,vvv
end module

module mod3
 use mod2,only:jjj
 use mod2a,only:jjj,vvv
 use mod2b,only:iii2=>jjj
 use mod2c,only:jjj,ccc=>vvv,xxx
 use mod2d,only:jjj,ccc=>vvv
end module


use mod,iii=>iii
use mod3
use mod,only:iiia=>iii,iii2a=>iii2
if(100.ne.jjj) write(6,*) "NG"
if(100.ne.iiia) write(6,*) "NG"
if(100.ne.iii) write(6,*) "NG"
if(100.ne.vvv) write(6,*) "NG"
print *,"pass"
end
