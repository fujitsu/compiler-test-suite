module m1
contains
subroutine s1(x1,x2,x3,x4,vs)
character(*),dimension(:):: x1,x2,x3,x4
integer vs(:)
x1='123'
x2='123'
x3='123'
x4='123'
n1=1;n2=1
call c1([character(2)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],1,2,8)
call c1([character(2)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],2,2,8)
call c1([character(2)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],2,2,8)
call c1([character(3)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],3,3,8)
call c1([character(3)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],4,3,8)
call c1([character(3)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],5,3,8)
k2=2
call c1([character(k2)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],1,2,8)
call c1([character(k2)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],2,2,8)
call c1([character(k2)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],2,2,8)
k3=3
call c1([character(k3)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],3,3,8)
call c1([character(k3)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],4,3,8)
call c1([character(k3)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],5,3,8)
k1=1
call c1([character(k1+1)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],1,2,8)
call c1([character(k1+1)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],2,2,8)
call c1([character(k1+1)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],2,2,8)
call c1([character(k2+1)::(x1(vs),x2(vs),x3(vs),x4(vs),kk=n1,n2)],3,3,8)
call c1([character(k2+1)::(x1(vs)//x1(vs),x2(vs)//x2(vs),x3(vs)//x3(vs),x1(vs)//x4(vs),kk=n1,n2)],4,3,8)
call c1([character(k2+1)::(x1(vs)//x1(vs)//x4(vs),x2(vs)//x2(vs)//x4(vs),x3(vs)//x3(vs)//x4(vs),x1(vs)//x4(vs)//x4(vs),kk=n1,n2)],5,3,8)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (1)
if (len(z)/=k)print *,101
if (any(shape(z)/=(/n/)))print *,102
if (z(1)/='1 ')print *,1031
if (z(2)/='1 ')print *,1032
if (z(3)/='12')print *,1041
if (z(4)/='12')print *,1042
if (z(5)/='12')print *,1051
if (z(6)/='12')print *,1052
if (z(7)/='12')print *,1053
if (z(8)/='12')print *,1054
case (2)
if (len(z)/=k)print *,2101
if (any(shape(z)/=(/n/)))print *,2102
if (z(1)/='11')print *,2031
if (z(2)/='11')print *,2032
if (z(3)/='12')print *,2041
if (z(4)/='12')print *,2042
if (z(5)/='12')print *,2051
if (z(6)/='12')print *,1052
if (z(7)/='11')print *,1053
if (z(8)/='11')print *,1054
case (3)
if (len(z)/=k)print *,3101
if (any(shape(z)/=(/n/)))print *,3102
if (z(1)/='1  ')print *,31031
if (z(2)/='1  ')print *,31032
if (z(3)/='12 ')print *,31041
if (z(4)/='12 ')print *,31042
if (z(5)/='123')print *,31051
if (z(6)/='123')print *,31052
if (z(7)/='123')print *,31053
if (z(8)/='123')print *,31054
case (4)
if (len(z)/=k)print *,42101
if (any(shape(z)/=(/n/)))print *,42102
if (z(1)/='11 ')print *,42031
if (z(2)/='11 ')print *,42032
if (z(3)/='121')print *,42041
if (z(4)/='121')print *,42042
if (z(5)/='123')print *,42051
if (z(6)/='123')print *,41052
if (z(7)/='112')print *,41053
if (z(8)/='112')print *,41054
case (5)
if (len(z)/=k)print *,52101
if (any(shape(z)/=(/n/)))print *,52102
if (z(1)/='111')print *,52031
if (z(2)/='111')print *,52032
if (z(3)/='121')print *,52041
if (z(4)/='121')print *,52042
if (z(5)/='123')print *,52051
if (z(6)/='123')print *,51052
if (z(7)/='112')print *,51053
if (z(8)/='112')print *,51054
end select
end subroutine
end subroutine
end
use m1
character,dimension(2):: x1*1,x2*2,x3*3,x4*10000
integer ::vs(2)=[1,2]
x1='123'
x2='123'
x3='123'
x4='123'
call s1(x1,x2,x3,x4,vs)
print *,'pass'
end
