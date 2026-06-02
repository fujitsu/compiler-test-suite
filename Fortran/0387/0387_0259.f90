module mod1
 contains
  function xfunc1(i,j) result(rst)
   integer,optional :: i
   integer,optional :: j
   logical          :: k
   integer :: rst
   rst=1
   k = present(i)
   if (k.eqv..true.) then
    rst=rst+i
   endif
   k = present(j)
   if (k.eqv..true.) then
    rst=rst+j
   endif
  end function
end module

use mod1

type ty1
 procedure(xfunc1),pointer,nopass :: tpmfp
end type

type ty2
 type (ty1) :: t21
end type

type(ty1) :: t1
type(ty2) :: t2
integer,target  :: it
integer :: i
i=1

t1%tpmfp=>xfunc1
t2%t21%tpmfp=>xfunc1

it = t1%tpmfp()
if (it.ne.1) print *,'fail'
it = t2%t21%tpmfp()
if (it.ne.1) print *,'fail'
it = t1%tpmfp(i=i,j=i)
if (it.ne.3) print *,'fail'
it = t2%t21%tpmfp(j=i)
if (it.ne.2) print *,'fail'
it = t1%tpmfp(i=i)
if (it.ne.2) print *,'fail'
it = t2%t21%tpmfp(i,j=1)
if (it.ne.3) print *,'fail'

print *,'pass'

end
