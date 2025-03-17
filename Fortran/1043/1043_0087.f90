module modn
interface operator(*)
  function boolean_and(b1, b2)
    logical, intent(in) ::b1, b2
    logical :: boolean_and
  end function boolean_and
end interface operator(*)
end module
module mod
 use modn
 integer :: iii=10
 real :: lll=100
 contains
  subroutine sub
   lll =iii*lll
  end subroutine
end module
module mod0
 use modn
 integer :: jjj=100
end module
module mod1
 use mod,kkk=>iii
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj
end module
module mod2a
 use mod1,only:kkk
end module
module mod3
 use mod2,only:jjj
 use mod2a,only:kkk
 use mod1,only:kkk
end module

use mod3
if(100.ne.jjj) write(6,*) "NG"
print *,jjj,kkk
print *,"pass"
end
