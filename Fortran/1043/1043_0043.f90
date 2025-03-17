module mod
 interface assignment(=)
  subroutine suba(i,j)
    intent(inout) :: i
    intent(in) ::j
    character :: j
  end subroutine
 end interface
 interface operator(.eq.)
  function ifuna(i,j)
    intent(in) :: i,j
    integer :: i
    character :: j
  end function
 end interface
 integer :: iii=100
 integer :: iii2=100
end module
module mod0
 interface assignment(=)
  subroutine subb(i,j)
    intent(inout) :: i
    intent(in) ::j
    logical   :: j
  end subroutine
 end interface
 interface operator(.eq.)
  function ifunb(i,j)
    intent(in) :: i,j
    integer :: i
    logical   :: j
  end function
 end interface
 integer :: jjj=100
end module
  subroutine suba(i,j)
    intent(inout) :: i
    intent(in) ::j
    character :: j,jj
    jj=j;jj=jj
    i=10
  end subroutine
  subroutine subb(i,j)
    intent(inout) :: i
    intent(in) ::j
    logical    ::j,jj
    jj=j;jj=jj
    i=20
  end subroutine
  function ifuna(i,j)
    intent(in) :: i,j
    integer :: i
    character :: j,jj
    jj=j;jj=jj
    ifuna=i+1
  end function
  function ifunb(i,j)
    intent(in) :: i,j
    integer :: i
    logical   :: j,jj
    jj=j;jj=jj
    ifunb=i+10
  end function
module mod1
 use mod,only:iii,iii2
 use mod0,only:jjj,assignment(=),operator(.eq.)
end module
module mod2
 use mod1,only:jjj,operator(.eq.)
end module
module mod2a
 use mod,only:iii2
 use mod1,only:jjj,assignment(=),operator(==)
 integer iii
end module
module mod3
 use mod2,only:jjj
 use mod2a,only:jjj
 use mod,only:operator(.eq.),iii,assignment(=)
 use mod,only:iii2
 use mod2a,only:assignment(=),operator(==)
 use mod2a,only:iii,iii2
end module


use mod3,only:jjj,assignment(=),operator(==)
if(100.ne.jjj) write(6,*) "NG"
i=.false.
if(20.ne.i) write(6,*) "NG"
print *,"pass"
end
