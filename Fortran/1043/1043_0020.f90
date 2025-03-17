module mod
 integer :: iii=100,kkk=200
end module
module moda
 use mod,vvv=>iii
end module
module mod0
 integer :: jjj=100
end module
module mod1
 use moda,only:vvv,kkk
 use mod0,only:jjj
 use mod
 integer :: xxx=2
end module
module mod2
 use mod1,only:jjj,vvv,kkk
end module
module mod2a
 use mod1,only:jjj,xxx,iii
end module
module mod3
 use mod2,only:jjj,vvv,kkk
 use mod2a,ppp=>jjj
end module


use mod3
 use mod2,only:kkk
 use mod2a,ppp=>jjj
 use mod2a
if(100.ne.iii) write(6,*) "NG"
if(100.ne.jjj) write(6,*) "NG"
if(100.ne.vvv) write(6,*) "NG"
if(100.ne.ppp) write(6,*) "NG"
if(200.ne.kkk) write(6,*) "NG"
if(2.ne.xxx) write(6,*) "NG"
print *,"pass"
end
