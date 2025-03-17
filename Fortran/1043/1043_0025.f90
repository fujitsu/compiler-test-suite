module mod
 interface operator(.www.)
  module procedure ifun
 end interface
 integer :: iii=100
contains
function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function
end module
module mod0
 interface operator(.qqq.)
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
 use mod,only:operator(.www.),iii,ifun
 use mod0,only:operator(.qqq.),jjj,jfun
end module
module mod2
 use mod1,only:operator(.qqq.),jjj,operator(.www.),iii,jfun,ifun
end module
module mod2a
 use mod1,only:operator(.qqq.),jjj,jfun
 contains
 subroutine subb()
  use mod1,only:ifun,operator(.www.)
  if(198.ne.jfun(jjj,"a")) write(6,*) "NG"
  if(198.ne.(jjj.qqq."a")) write(6,*) "NG"
  if(198.ne.ifun(101,"a")) write(6,*) "NG"
  if(198.ne.(101.www."a")) write(6,*) "NG"
 end subroutine
end module
module mod3
 use mod2,only:operator(.qqq.),jjj,jfun,operator(.www.)
 use mod2a,only:operator(.qqq.),jjj,subb
end module


use mod3
if(100.ne.jjj) write(6,*) "NG"
if(198.ne.(jjj.qqq."a")) write(6,*) "NG"
if(198.ne.(101.www."a")) write(6,*) "NG"
if(198.ne.jfun(jjj,"a")) write(6,*) "NG"
call subb()
print *,"pass"
end
