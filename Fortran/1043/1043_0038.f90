module mod
 integer :: iii=100
end module
module mod0
 integer :: jjj=100
end module
module moda
 integer :: aaa=100
end module
module mod1
 use mod,only:iii
 use mod0,only:jjj
 use moda,only:aaa
 integer :: jjja=200
end module
module mod2
 use mod1,only:jjj=>jjja,aaa
end module
module mod2a
 use mod1,only:jjja=>jjja,aaa
end module
module mod3
 use mod2,only:aaa=>aaa,jjj
 use mod2a,only:aaa=>aaa,jjja
end module


use mod2,only:jjj=>jjj,aaa
use mod3
use mod1,only:jjjb=>jjja,aaa
if(200.ne.jjj) write(6,*) "NG"
print *,"pass"
end
