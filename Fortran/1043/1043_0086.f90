module modn
interface assignment(=)
  subroutine int_num(n, m)
    integer, intent(out) ::n
    logical, intent(in) ::m
  end subroutine int_num
  subroutine int_real(n1, m1)
    real, intent(out) ::n1
    logical, intent(in) ::m1
  end subroutine int_real
end interface assignment(=)
end module
module mod
 use modn
 integer :: iii=10
 real :: lll=100
end module
module mod0
 use modn
 integer :: jjj=100
end module
module mod1
 use mod,kkk=>iii
 use mod,only:mmm=>lll
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj
 use mod1,only:mmm
end module
module mod2a
 use mod1,only:mmm
 use mod1,only:jjj
 use mod1,only:kkk
end module
module mod3
 use mod2,only:jjj
 use mod2a,only:jjj
 use mod1,only:kkk
end module
use mod3
if(100.ne.jjj) write(6,*) "NG"
if(10.ne.kkk) write(6,*) "NG"
print *,"pass"
end
