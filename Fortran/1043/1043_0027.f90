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
 use mod2,only:jfun_all,jjj,jfun,inta=>int,kkk
 use mod2a,only:jfun_all,jjj,subb
end module


use mod3
if(100.ne.jjj) write(6,*) "NG"
if(198.ne.jfun_all(jjj,"a")) write(6,*) "NG"
if(198.ne.inta(101+97)) write(6,*) "NG"
if(198.ne.jfun(jjj,"a")) write(6,*) "NG"
call subb()
print *,"pass"
end
