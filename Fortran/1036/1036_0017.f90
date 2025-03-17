module m1
 type v
    integer::y
 end type
 type t
    type(v),pointer::a1(:,:)
    type(v),pointer::a2(:,:)
    type(v),pointer::a3(:,:)
 end type
 integer,parameter::size=100
 type(v),target,dimension(5,5)::w
  type (t)::var1,var2
contains
subroutine s(x,i)
type (t)::x
call sub(x%a1,x%a2,x%a3,x%a1,x%a2,x%a3,i)
end subroutine
subroutine sub(z1,z2,z3,p1,p2,p3,i)
type(v),dimension(*):: z1,z2,z3
type(v),pointer,dimension(:,:):: p1,p2,p3   
select case(i)
case (1)
if (z1(size*size)%y/=1)print *,'error-1'
if (z2(size*size)%y/=2)print *,'error-2'
if (z3(size*size)%y/=3)print *,'error-3'
if (p1(size,size)%y/=1)print *,'error-1c'
if (p2(size,size)%y/=2)print *,'error-2c'
if (p3(size,size)%y/=3)print *,'error-3c'
case (2)
if (z1(15)%y/=10)print *,'error-11'
if (z2(15)%y/=10)print *,'error-12'
if (z3(15)%y/=10)print *,'error-13'
if (p1(3,5)%y/=10)print *,'error-31'
if (p2(3,5)%y/=10)print *,'error-32'
if (p3(3,5)%y/=10)print *,'error-33'
end select
end subroutine
end
use m1
allocate(var1%a1(size,size), var1%a2(size,size), var1%a3(size,size))
var1%a1=v(0);var1%a2=v(0);var1%a3=v(0)
var1%a1(size,size)%y=1;var1%a2(size,size)%y=2; var1%a3(size,size)%y=3
w%y=0
w(5,5)%y=10
var2%a1=> w(::2,:)
var2%a2=> w(::2,:)
var2%a3=> w(::2,:)

call s(var1,1)
call s(var2,2)
print *,'pass'
end
