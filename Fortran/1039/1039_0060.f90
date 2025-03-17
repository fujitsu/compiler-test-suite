subroutine s(i,a,j1,j2,j3,j4,k)
integer a(i)
integer,dimension(a(4),a(1),a(2),a(3))::e5
integer,dimension(j3,j4,j1,j2)::dd1
integer,dimension(a(4),a(1)+k,a(2),a(3))::e4
integer,dimension(a(4)+k,a(1),a(2),a(3))::e3
integer,dimension(a(4),a(1),a(2),a(3))::e2
integer,dimension(a(4),a(1),a(2)+k,a(3)+k)::e1
integer,dimension(j3,j4,j1,j2)::dd2
integer,dimension(a(1)+k,a(2),a(3),a(4))::b1
integer,dimension(a(1),a(2)+k,a(3),a(4))::b2
integer,dimension(a(1),a(2),a(3),a(4))::b3
integer,dimension(a(1),a(2),a(3)+k,a(4))::b4
integer,dimension(a(1)+k,a(2),a(3),a(4))::b5
integer,dimension(a(2),a(3)+k,a(4),a(1))::c1
integer,dimension(j3+k,j4,k+j1,j2)::dd3
integer,dimension(k+a(2),a(3),a(4),a(1))::c2
integer,dimension(a(2),k+a(3),a(4),a(1))::c3
integer,dimension(a(2),a(3),a(4)+k,a(1))::c4
integer,dimension(a(2),a(3),a(4),k+a(1))::c5
integer,dimension(a(3)+k,a(4),a(1),a(2))::d1
integer,dimension(k+j3,k+j4,j1+k,j2+k)::dd4
integer,dimension(k+a(3),a(4),a(1),a(2))::d2
integer,dimension(a(3),a(4),a(1)+k,a(2)+k)::d3
integer,dimension(a(3)+k,a(4),a(1),a(2))::d4
integer,dimension(a(3),a(4)+k,a(1),a(2))::d5
integer,dimension(k+j3,k+j4,k+j1,k+j2)::dd5
b1=1;b2=2;b3=3;b4=4;b5=5
c1=11;c2=12;c3=13;c4=14;c5=15
d1=21;d2=22;d3=23;d4=24;d5=25
dd1=21;dd2=22;dd3=23;dd4=24;dd5=25
e1=31;e2=32;e3=33;e4=34;e5=35
if (any(shape(b1)/=(/1,2,3,4/)))print *,'error-201'
if (any(shape(b2)/=(/1,2,3,4/)))print *,'error-202'
if (any(shape(b3)/=(/1,2,3,4/)))print *,'error-203'
if (any(shape(b4)/=(/1,2,3,4/)))print *,'error-204'
if (any(shape(b5)/=(/1,2,3,4/)))print *,'error-205'
if (any(shape(c1)/=(/2,3,4,1/)))print *,'error-301'
if (any(shape(c2)/=(/2,3,4,1/)))print *,'error-302'
if (any(shape(c3)/=(/2,3,4,1/)))print *,'error-303'
if (any(shape(c4)/=(/2,3,4,1/)))print *,'error-304'
if (any(shape(c5)/=(/2,3,4,1/)))print *,'error-305'
if (any(shape(d1)/=(/3,4,1,2/)))print *,'error-401'
if (any(shape(d2)/=(/3,4,1,2/)))print *,'error-402'
if (any(shape(d3)/=(/3,4,1,2/)))print *,'error-403'
if (any(shape(d4)/=(/3,4,1,2/)))print *,'error-404'
if (any(shape(d5)/=(/3,4,1,2/)))print *,'error-405'
if (any(shape(dd1)/=(/3,4,1,2/)))print *,'error-401'
if (any(shape(dd2)/=(/3,4,1,2/)))print *,'error-402'
if (any(shape(dd3)/=(/3,4,1,2/)))print *,'error-403'
if (any(shape(dd4)/=(/3,4,1,2/)))print *,'error-404'
if (any(shape(dd5)/=(/3,4,1,2/)))print *,'error-405'
if (any(shape(e1)/=(/4,1,2,3/)))print *,'error-501'
if (any(shape(e2)/=(/4,1,2,3/)))print *,'error-501'
if (any(shape(e3)/=(/4,1,2,3/)))print *,'error-501'
if (any(shape(e4)/=(/4,1,2,3/)))print *,'error-501'
if (any(shape(e5)/=(/4,1,2,3/)))print *,'error-501'
if (any(b1/=1))print *,'error-101'
if (any(b2/=2))print *,'error-102'
if (any(b3/=3))print *,'error-103'
if (any(b4/=4))print *,'error-104'
if (any(b5/=5))print *,'error-105'
if (any(c1/=11))print *,'error-111'
if (any(c2/=12))print *,'error-112'
if (any(c3/=13))print *,'error-113'
if (any(c4/=14))print *,'error-114'
if (any(c5/=15))print *,'error-115'
if (any(d1/=21))print *,'error-121'
if (any(d2/=22))print *,'error-121'
if (any(d3/=23))print *,'error-121'
if (any(d4/=24))print *,'error-121'
if (any(d5/=25))print *,'error-121'
if (any(dd1/=21))print *,'error-121'
if (any(dd2/=22))print *,'error-121'
if (any(dd3/=23))print *,'error-121'
if (any(dd4/=24))print *,'error-121'
if (any(dd5/=25))print *,'error-121'
if (any(e1/=31))print *,'error-121'
if (any(e2/=32))print *,'error-121'
if (any(e3/=33))print *,'error-121'
if (any(e4/=34))print *,'error-121'
if (any(e5/=35))print *,'error-121'
end
parameter (i=4)
integer,parameter:: a(i)=(/1,2,3,4/)
call s(i,a,1,2,3,4,0)
if (any(a/=(/1,2,3,4/)))print *,'error-1'
print *,'pass'
end
