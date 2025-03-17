module mod
 type iii
   integer :: ia=100
 end type
end module

module mod0
 type jjj
   integer :: ja=100
 end type
end module

module mod1
 use mod,only:iii
 use mod0,only:jjj
end module

module mod2
 use mod1
end module

module mod2a
 use mod1
end module

program main
use mod2,only:jjj
use mod2a
type (iii):: pia
type (jjj):: pja
if(100.ne.pia%ia) write(6,*) "NG"
if(100.ne.pja%ja) write(6,*) "NG"
print *,'pass'
end
