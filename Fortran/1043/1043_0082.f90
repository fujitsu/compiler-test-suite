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
 use mod
 use mod1,only:jjj
end module

program main
 use mod2,only:jjj
 if(100.ne.jjj) write(6,*) "NG"
 print *,'pass'
end
