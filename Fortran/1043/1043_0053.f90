module mod_a
 integer :: iii=100
end module
module mod_b
 use mod_a
 integer :: jjj=200
end module
module mod_c
 use mod_b
 integer :: kkk=300
end module
module mod_d
 use mod_c
 integer :: lll=400
end module
module mod_e
 use mod_d
 integer :: mmm=500
end module

module mod1
 use mod_a,only:iii
 use mod_b,only:iii,jjj
 use mod_c,only:iii,kkk
 use mod_d,only:iii,lll
 use mod_e,only:mmm
end module
module mod2
 use mod1,only:jjj
 use mod1,only:lll
end module
module mod2a
 use mod1,only:jjj
 use mod1,only:lll
end module
module mod3
 use mod2,only:jjj,lll
 use mod2a,only:jjj,lll
end module

module mod2_1
 use mod1,only:iii
 use mod1,only:mmm
end module
module mod2_1a
 use mod1,only:iii
 use mod1,only:mmm
end module
module mod3_1
 use mod2_1,only:iii,mmm
 use mod2_1a,only:iii,mmm
end module
module mod4_1
 use mod2,only:jjj,lll
 use mod2a,only:jjj,lll
 use mod2_1,only:mmm2=>mmm
 use mod2_1a,only:iii
end module


use mod3
use mod3_1
use mod4_1,only: jjj,lll,mmm=>mmm2
use mod4_1,only:jjj
if(200.ne.jjj) write(6,*) "NG"
if(400.ne.lll) write(6,*) "NG"
print *,"pass"
end
