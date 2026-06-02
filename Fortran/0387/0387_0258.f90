module mod1
 contains
  subroutine msub1(i)
   integer i
   if (i.ne.1) then
    i=i+1
   else
    i=1
   endif
  end subroutine
end module

use mod1

type ty1
 logical :: l1
 procedure(msub1),nopass,pointer :: tpmsp
 integer :: ii
end type

type(ty1) :: t1
procedure(msub1),pointer :: pmsp

pmsp=>msub1

t1=ty1(.true.,pmsp,1)

call t1%tpmsp(t1%ii)

if (t1%ii.ne.1) print *,'fail'

print *,'pass'

end
