module mod
 integer :: iii=100,kkk=200
end module
module modv
 use mod,only:iii,kkk
end module
module moda
 use modv,vvv=>iii
 integer :: ttt=1
end module
module mod01
 integer :: jjj=100
end module
module mod0
 use mod01,only:jjj
 integer :: hhh
end module
module mod1
 use modv,only:iii,kkk
 use moda,only:vvv,kkk
 use mod0,only:jjj
 integer :: xxx=2
end module
module mod2
 use mod1,only:jjj,vvv,kkk,iii
end module
module mod2a
 use mod1,only:jjj,xxx,iii
end module
module mod3
 use mod2,only:vvv,kkk,iii
 use mod2a,only:ppp=>jjj
end module


use mod3
 use mod2,only:kkk
 use mod2a,ppp=>jjj
 use mod2a,jjj=>jjj
if(100.ne.iii) write(6,*) "NG"
if(100.ne.jjj) write(6,*) "NG"
if(100.ne.vvv) write(6,*) "NG"
if(100.ne.ppp) write(6,*) "NG"
if(200.ne.kkk) write(6,*) "NG"
if(2.ne.xxx) write(6,*) "NG"
print *,"pass"
end
