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
  procedure(msub1),pointer :: rst
 end function
 function func2() result(rst)
  use mod1
  procedure(xfunc1),pointer :: rst
 end function
end interface

type ty1
 procedure(xfunc1),nopass,pointer :: tpmfp
 procedure(msub1), nopass,pointer :: tpmsp
end type

type(ty1) :: t1
procedure(xfunc1),pointer :: pmfp
procedure(msub1), pointer :: pmsp
integer,pointer :: ip
integer,target  :: it

pmfp=>xfunc1
pmsp=>msub1

t1=ty1(pmfp,pmsp)

call t1%tpmsp()
it = t1%tpmfp()

t1=ty1(tpmsp=pmsp,tpmfp=pmfp)

t1=ty1(t1%tpmfp,t1%tpmsp)
t1=ty1(t1%tpmfp,tpmsp=t1%tpmsp)
t1=ty1(tpmsp=t1%tpmsp,tpmfp=t1%tpmfp)

call t1%tpmsp()
it = t1%tpmfp()

t1=ty1(null(),null())
t1=ty1(null(),tpmsp=null())
t1=ty1(tpmsp=null(),tpmfp=null())

print *,'pass'

end

function func1() result(rst)
 use mod1
 procedure(msub1),pointer :: rst
 rst=>msub1
end function

function func2() result(rst)
 use mod1
 procedure(xfunc1),pointer :: rst
 rst=>xfunc1
end function
