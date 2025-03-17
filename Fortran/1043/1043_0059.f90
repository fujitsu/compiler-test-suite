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
module mod0
 interface assignment(=)
  subroutine subb(i,j)
    intent(inout) :: i
    intent(in) ::j
    logical :: j
  end subroutine
 end interface
 integer :: jjj=100
end module
  subroutine suba(i,j)
    intent(inout) :: i
    intent(in) ::j
    character :: j
    i=10
  end subroutine
  subroutine subb(i,j)
    intent(inout) :: i
    intent(in) ::j
    logical    ::j
    i=20
  end subroutine
module mod1
 use mod,only:iii,assignment(=)
 use mod0,only:jjj
end module
module mod2
 use mod1,only:jjj
end module
module mod2a
 use mod1,only:jjj
end module

program main
 use mod2,only:jjj
 use mod2a,only:jjj

if(100.ne.jjj) write(6,*) "NG"
print *,"pass"
end
