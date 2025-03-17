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

program main
use mod,only:iii
use mod1,only:iii
if(100.ne.iii) write(6,*) "NG"
print *,'pass'
end
