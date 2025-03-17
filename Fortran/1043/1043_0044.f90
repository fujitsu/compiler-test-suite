module mod
 integer :: iii=200,jjj2=111
 intrinsic :: int
 type ty1
  integer :: iii=123
 end type
 contains
  function ifunc(i)
    ifunc = i
  end function
end module
module mod0
 integer :: jjj=100
end module
module mod1
 use mod,only:iii,int ,ifunc,jjj2,ty1
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj,iii,jint=>int,jjj2
end module
module mod2a
 use mod,only:int,ifunc,ty1
 use mod1,only:jjj2=>jjj,jjj=>jjj
end module
module mod3
 use mod,only:int,ifunc
 use mod2,only:jjj,iii2=>iii,jint
 use mod2a,only:jjj2,int,ifunc,jjj3=>jjj2,ty1
end module


use mod3
type(ty1) :: str
if(123.ne.str%iii) write(6,*) "NG"
if(100.ne.jjj) write(6,*) "NG"
if(100.ne.jjj2) write(6,*) "NG"
if(200.ne.iii2) write(6,*) "NG"
if(300.ne.jint(300)) write(6,*) "NG"
if(300.ne.int(300)) write(6,*) "NG"
if(300.ne.ifunc(300)) write(6,*) "NG"
print *,"pass"
end
