module m1
type st
  character(2)::y(2)
end type
contains
subroutine s1(x1,x2,x3,x4)
character(*),dimension(:):: x1,x2,x3,x4
x1='123'
x2='123'
x3='123'
x4='123'
n1=1;n2=1
call c1([st::st(x1),(st(x2),st(x3),kk=n1,n2),st(x4)],1,2,4)
contains
subroutine c1(z,m,k,n)
type(st)::z(:)
select case (m)
case (1)
if (len(z(1)%y)/=k)print *,101
if (any(shape(z)/=(/n/)))print *,102
if (z(1)%y(1)/='1')print *,1031
if (z(1)%y(2)/='1')print *,1032
if (z(2)%y(1)/='12')print *,1041
if (z(2)%y(2)/='12')print *,1042
if (z(3)%y(1)/='12')print *,1051
if (z(3)%y(2)/='12')print *,1052
if (z(4)%y(1)/='12')print *,1053
if (z(4)%y(2)/='12')print *,1054
end select
end subroutine
end subroutine
end
use m1
character,dimension(2):: x1*1,x2*2,x3*3,x4*10000
x1='123'
x2='123'
x3='123'
x4='123'
call s1(x1,x2,x3,x4)
print *,'pass'
end
