module mod
 integer :: iii=200
 intrinsic :: int
 contains
  function ifunc(i)
    ifunc = i
  end function
end module
module mod0
 integer :: jjj=100
end module
module mod1
 use mod,only:iii,int ,ifunc
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj,iii,jint=>int
end module
module mod2a
 use mod,only:int,ifunc
 use mod1,only:jjj=>jjj
end module
module mod3
 use mod,only:int,ifunc
 use mod2,only:jjj,iii2=>iii,jint
 use mod2a,only:jjj,int,ifunc
end module


use mod3
if(100.ne.jjj) write(6,*) "NG"
if(200.ne.iii2) write(6,*) "NG"
if(300.ne.jint(300)) write(6,*) "NG"
if(300.ne.int(300)) write(6,*) "NG"
if(300.ne.ifunc(300)) write(6,*) "NG"
print *,"pass"
end
