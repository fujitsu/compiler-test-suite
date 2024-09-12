module mod1
 contains
  function xfunc1() result(j)
   integer :: j
   j=1
  end function
  subroutine msub1()
  end subroutine
end module

use mod1

implicit none

interface
 function func1() result(j)
  integer :: j
 end function
 subroutine sub1()
 end subroutine
end interface

intrinsic idim

procedure(xfunc1) ,pointer :: pmfp
procedure(msub1)  ,pointer :: pmsp
procedure(func1)  ,pointer :: pfp
procedure(sub1)   ,pointer :: psp
procedure(integer),pointer :: pip
procedure(idim)   ,pointer :: pidim

integer :: ii

pmfp=>xfunc1
pfp=>func1

ii=pmfp()
ii=pfp()

print *,'pass'

end

function func1() result(j)
 integer :: j
 j=1
end function
subroutine sub1()
end subroutine
