module mod1
 contains
  subroutine msub1()
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

t1%tpmsp         => msub1
t2%t21%tpmsp     => msub1
t3%t32%t21%tpmsp => msub1

call t1%tpmsp()
call t2%t21%tpmsp()
call t3%t32%t21%tpmsp()

print *,'pass'

end
