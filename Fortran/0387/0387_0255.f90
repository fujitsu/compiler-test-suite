module mod1
 contains
  subroutine msub1(i,j)
   integer :: i
   integer,optional :: j
   logical :: k
   k = present(j)
   if (k.neqv..false.) then
    i=j
   else
    i=1
   endif
  end subroutine
end module

use mod1

type ty1
 procedure(msub1),nopass,pointer :: tpmsp
end type

type ty2
 type(ty1) :: t21
end type

type ty3
 type(ty2) :: t32
end type

type(ty1) :: t1
type(ty2) :: t2
type(ty3) :: t3
procedure(msub1),pointer :: pmsp
integer,target  :: it

pmsp=>msub1

t1=ty1(pmsp)
t2=ty2(ty1(pmsp))
t3=ty3(ty2(ty1(pmsp)))
pmsp=>t1%tpmsp
call t1%tpmsp(i=it)
call t2%t21%tpmsp(j=1,i=it)
call t3%t32%t21%tpmsp(it)

if (it.ne.1) print *,'fail'

print *,'pass'

end
