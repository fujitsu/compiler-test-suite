module mod
type ty1
 integer,dimension(0:0) :: i=1,j=1,k=1
end type
end
subroutine sub()
use mod
type (ty1) :: j = ty1([1],k=[1]+1,j=1+[2])
if (j%i(0)/=1)print *,101
if (j%k(0)/=2)print *,102
if (j%j(0)/=3)print *,103
end
subroutine test01()
use mod
type (ty1) :: j = ty1(2-([1]),k=(((2)+(2))),j=[2+1])
if (j%i(0)/=1)print *,201
if (j%k(0)/=4)print *,202
if (j%j(0)/=3)print *,203
end
subroutine test02()
use mod
type (ty1) :: j = ty1([1],[3],(([2]+2)))
if (j%i(0)/=1)print *,301
if (j%k(0)/=4)print *,302
if (j%j(0)/=3)print *,303
end
call test01
call test02
call sub
print *,'pass'
end
