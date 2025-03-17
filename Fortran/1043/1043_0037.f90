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
 integer :: jjja=100
end module
module mod2
 use mod1,only:jjja,aaa
end module
module mod2a
 use mod1,only:jjja,aaa
end module
module mod3
 use mod2,only:jjja
 use mod2a,only:jjja
end module


use mod3
if(100.ne.jjja) write(6,*) "NG"
print *,"pass"
end
