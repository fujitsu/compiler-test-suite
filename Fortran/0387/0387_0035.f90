module mod1
 contains
  function xfunc1() result(rst)
   integer :: rst
   rst=1
  end function
  subroutine msub1()
   integer :: i
   i=1
  end subroutine
end module

use mod1

interface
 function func1() result(rst)
  use mod1
  procedure(xfunc1),pointer :: rst
 end function
end interface

type ty0
 integer,pointer :: tip
end type

type ty1
 procedure(xfunc1),nopass,pointer :: tpmfp
end type

type(ty0) :: t0
type(ty1) :: t1
procedure(xfunc1),pointer :: pmfp
procedure(msub1),pointer :: pmsp
integer,pointer :: ip
integer,target  :: it

t0=ty0(ip)
t0=ty0(ip)
t0=ty0(it)
t0=ty0(tip=ip)
t0=ty0(tip=it)

t1=ty1(pmfp)
t1=ty1(tpmfp=pmfp)

t1=ty1(t1%tpmfp)
t1=ty1(tpmfp=t1%tpmfp)
t1=ty1(func1())
t1=ty1(tpmfp=func1())

print *,'pass'

end

function func1() result(rst)
 use mod1
 procedure(xfunc1),pointer :: rst
 rst=>xfunc1
end function
