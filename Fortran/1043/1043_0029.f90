module modv
 intrinsic int
 integer jfun
end module
module mod
 use modv,int=>int
 use modv,inta=>jfun
 integer :: iii=100
contains
function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function
end module
module mod0
 interface jfun_all
  module procedure jfun
 end interface
 integer :: jjj=100
contains
function jfun(i,j)
 intent(in) :: i,j
 character :: j
 jfun=i+ichar(j)+1
end function
end module
module mod1
 use mod,only:iii,int,inta
 use mod0,only:jfun_all,jjj,jfun
 integer :: kkk=300
end module
module mod2
 use mod1,only:jfun_all,jjj,iii,jfun,int,kkk,inta
end module
module mod2a
 use mod1,only:jfun_all,jjj,jfun,kkk
 contains
 subroutine subb()
  if(198.ne.jfun_all(jjj,"a")) write(6,*) "NG"
  if(198.ne.jfun(jjj,"a")) write(6,*) "NG"
 end subroutine
end module
module mod3
 use mod2,only:jfun_all,jjj,jfun
 use mod2a,only:jfun_all,jjj,subb
end module

module mod3a
 use mod2,only:jfun_all,jjj,jfun
 use mod2a,only:jfun_all,jjj,subb
end module

module mod4
 use mod3,only:jfun_all,jjj,jfun
 use mod3a,only:jfun_all,jjj,subb
end module

module mod4a
 use mod3,only:jfun_all,jjj,jfun
 use mod3a,only:jfun_all,jjj,subb
end module

module mod5
 use mod4,only:jfun_all,jjj,jfun
 use mod4a,only:jfun_all,jjj,subb
end module

module mod5a
 use mod4,only:jfun_all,jjj,jfun
 use mod4a,only:jfun_all,jjj,subb
end module

module mod6
 use mod5a,only:jfun_all,jjj,subb
 use mod5,only:jfun_all,jjj,jfun
end module

use mod6
if(100.ne.jjj) write(6,*) "NG"
if(198.ne.jfun_all(jjj,"a")) write(6,*) "NG"
if(198.ne.int(101+97)) write(6,*) "NG"
if(198.ne.jfun(jjj,"a")) write(6,*) "NG"
call subb()
print *,"pass"
end
