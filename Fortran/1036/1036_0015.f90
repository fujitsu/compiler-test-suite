module m1
 type t
    character(len=2),pointer::a1(:,:)
    character(len=2),pointer::a2(:,:)
    character(len=2),pointer::a3(:,:)
 end type
 integer,parameter::size=100
 character(len=2),target,dimension(5,5)::w
  type (t)::var1,var2
contains
subroutine s(x,i)
type (t)::x
call sub(x%a1//x%a2,x%a1//x%a2//x%a3,x%a1,x%a2,x%a3,x%a1,x%a2,x%a3,i)
end subroutine
subroutine sub(x1,x2,z1,z2,z3,p1,p2,p3,i)
character(len=*),dimension(*):: z1,z2,z3
character(len=*),dimension(*):: x1,x2   
character(len=*),pointer,dimension(:,:):: p1,p2,p3   
select case(i)
case (1)
if (len(x1)/=4)print *,'error4-1'
if (len(x2)/=6)print *,'error4-2'
if (len(z1)/=2)print *,'error4-3'
if (len(p1)/=2)print *,'error4-4'
if (x1(size*size)/='1a2b')print *,'error-1b'
if (x2(size*size)/='1a2b3c')print *,'error-2b'
if (z1(size*size)/='1a')print *,'error-1'
if (z2(size*size)/='2b')print *,'error-2'
if (z3(size*size)/='3c')print *,'error-3'
if (p1(size,size)/='1a')print *,'error-1c'
if (p2(size,size)/='2b')print *,'error-2c'
if (p3(size,size)/='3c')print *,'error-3c'
case (2)
if (x1(15)/='1010')print *,'error-21'
if (x2(15)/='101010')print *,'error-22'
if (z1(15)/='10')print *,'error-11'
if (z2(15)/='10')print *,'error-12'
if (z3(15)/='10')print *,'error-13'
if (p1(3,5)/='10')print *,'error-31'
if (p2(3,5)/='10')print *,'error-32'
if (p3(3,5)/='10')print *,'error-33'
end select
end subroutine
end
use m1
allocate(var1%a1(size,size), var1%a2(size,size), var1%a3(size,size))
var1%a1=' ';var1%a2=' ';var1%a3=' '
var1%a1(size,size)='1a';var1%a2(size,size)='2b'; var1%a3(size,size)='3c'
w= ' '
w(5,5)='10'
var2%a1=> w(::2,:)
var2%a2=> w(::2,:)
var2%a3=> w(::2,:)

call s(var1,1)
call s(var2,2)
print *,'pass'
end
