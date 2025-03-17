module mod
 interface operator(*)
  function ifun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: iii=100
end module
function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function
function jfun(i,j)
 intent(in) :: i,j
 character :: j
 jfun=i+ichar(j)+1
end function
module mod0
 interface operator(/)
  function jfun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: jjj=100
end module
module mod1
 use mod,only:operator(*),iii
 use mod0,only:operator(/),jjj
end module
module mod2
 use mod1,only:operator(/),jjj,operator(*),iii
end module
module mod2a
 use mod1,only:operator(/),jjj,operator(*)
 contains
 subroutine subb()
  if(198.ne.(jjj/"a")) write(6,*) "NG"
  if(198.ne.(101*"a")) write(6,*) "NG"
 end subroutine
end module
module mod3
 use mod2,only:operator(/),jjj
 use mod2a,only:operator(/),jjj,operator(*),subb
end module


use mod3
if(100.ne.jjj) write(6,*) "NG"
if(198.ne.(jjj/"a")) write(6,*) "NG"
if(198.ne.(101*"a")) write(6,*) "NG"
call subb()
print *,"pass"
end
