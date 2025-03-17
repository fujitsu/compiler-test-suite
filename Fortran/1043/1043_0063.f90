module mod
 interface assignment(=)
  subroutine suba(i,j)
    intent(inout) :: i
    intent(in) ::j
    character :: j
  end subroutine
 end interface
 integer :: iii=100
end module

subroutine suba(i,j)
 intent(inout) :: i
 intent(in) ::j
 character :: j
 i=10
end subroutine

module mod0
 interface operator(-)
  function ifun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: jjj=100
end module

function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function

module mod1
 use mod,only:assignment(=),iii
 use mod0,only:jjj,operator(-)
end module

module modx
 use mod,only:assignment(=),iii
 use mod0,only:jjj,operator(-)
end module

module mody
 use mod,only:assignment(=),iii
 use mod0,only:jjj,operator(-)
end module

module mod2
 use mod1,only:jjj
 use modx,only:assignment(=),iii
 use mody,only:jjj,operator(-)
end module

module mod2a
 use mod1,only:jjj
 use modx,only:assignment(=),iii
 use mody,only:jjj,operator(-)
end module

program main
use mod2
use mod2a,only:assignment(=),iii,operator(-)
if(100.ne.iii) write(6,*) "NG"
print *,'pass'
end
