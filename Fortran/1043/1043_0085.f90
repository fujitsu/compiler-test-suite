module mod
 integer :: iii
 integer :: mmm(10)=10
 equivalence(mmm(1),iii)
end module
module mod0
 use mod,only:iii
 integer :: jjj=100
end module
module mod1
 use mod,kkk=>iii
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj
end module
module mod2a
 use mod1,only:jjj
 use mod1,only:kkk
end module
module mod3
 use mod2,only:jjj
 use mod2a,only:jjj
 use mod1,only:kkk
end module
use mod3
if(100.ne.jjj) write(6,*) "NG"
if(10.ne.kkk) write(6,*) "NG"
print *,"pass"
end
