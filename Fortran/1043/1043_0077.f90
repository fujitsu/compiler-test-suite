module mod
 integer :: iii=100
 contains
  subroutine sub
   integer :: vvv
     vvv = iii
     print *,vvv
  end subroutine
end module

module mod0
 integer :: jjj=100
 contains
  subroutine suba
   integer :: kkk
     kkk = jjj
    print *,kkk
  end subroutine
end module

module mod1
 use mod,only:sub
 use mod0,only:suba
end module

module mod2
 use mod1
end module

module mod2a
 use mod1
end module

program main
use mod2,only:suba
use mod2a
call sub
print *,'pass'
end
