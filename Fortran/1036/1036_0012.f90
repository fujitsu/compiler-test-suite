module m1
 type t
    integer,pointer::a1(:,:)
    integer,pointer::a2(:,:)
    integer,pointer::a3(:,:)
 end type
 integer,parameter::size=100
 integer,target,dimension(5,5)::w
contains
subroutine s(x,i)
type (t)::x
call sub(x%a1,x%a2,x%a3,i)
end subroutine
end
use m1
type (t)::var1,var2
allocate(var1%a1(size,size), var1%a2(size,size), var1%a3(size,size))
var1%a1(size,size)=1;var1%a2(size,size)=2; var1%a3(size,size)=3
w(5,5)=10
var2%a1=> w(::2,:)
var2%a2=> w(::2,:)
var2%a3=> w(::2,:)

do ik=1,10000
call s(var1,1)
call s(var2,2)
end do
print *,'pass'
end
subroutine sub(z1,z2,z3,i)
use m1
integer,dimension(*):: z1,z2,z3
select case(i)
case (1)
if (z1(size*size)/=1)print *,'error-1'
if (z2(size*size)/=2)print *,'error-2'
if (z3(size*size)/=3)print *,'error-3'
case (2)
if (z1(15)/=10)print *,'error-11'
if (z2(15)/=10)print *,'error-12'
if (z3(15)/=10)print *,'error-13'
end select
end
