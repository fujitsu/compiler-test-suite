module mod1
 contains
  function xfunc1(i,j) result(rst)
   integer,optional :: i
   integer,optional :: j
   integer :: rst
   rst=1
   if (present(i).neqv..false.) rst=rst+i
   if (present(j).neqv..false.) rst=rst+j
  end function
end module

use mod1

type ty1
 procedure(xfunc1),nopass,pointer :: tpmfp
end type

type ty2
 type (ty1) :: t21
end type

type(ty1) :: t1
type(ty2) :: t2
procedure(xfunc1),pointer :: pmfp
integer,target  :: it

pmfp=>xfunc1
t1=ty1(pmfp)
t2=ty2(ty1(pmfp))
pmfp=>t1%tpmfp

it = t1%tpmfp()
if (it.ne.1) print *,'fail'
it = t2%t21%tpmfp()
if (it.ne.1) print *,'fail'
it = t1%tpmfp(i=1,j=1)
if (it.ne.3) print *,'fail'
it = t2%t21%tpmfp(j=1)
if (it.ne.2) print *,'fail'
it = t1%tpmfp(i=1)
if (it.ne.2) print *,'fail'
it = t2%t21%tpmfp(1,j=1)
if (it.ne.3) print *,'fail'

print *,'pass'

end
