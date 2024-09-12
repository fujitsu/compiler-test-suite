subroutine s1(x1,x2,x3,x4)
character(*),dimension(2):: x1,x2,x3,x4
x1='123'
x2='123'
x3='123'
x4='123'
n1=1;n2=2
call c1([ character(1):: [character(2)::(x1,x2,x3,x4,kk=n1,n2)] ],1,2,8)
call c1([ character(1):: [character(2)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],2,2,8)
call c1([ character(1):: [character(2)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],2,2,8)
call c1([ character(1):: [character(3)::(x1,x2,x3,x4,kk=n1,n2)] ],3,3,8)
call c1([ character(1):: [character(3)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],4,3,8)
call c1([ character(1):: [character(3)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],5,3,8)
k2=2
call c1([ character(1):: [character(k2)::(x1,x2,x3,x4,kk=n1,n2)] ],1,2,8)
call c1([ character(1):: [character(k2)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],2,2,8)
call c1([ character(1):: [character(k2)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],2,2,8)
k3=3
call c1([ character(1):: [character(k3)::(x1,x2,x3,x4,kk=n1,n2)] ],3,3,8)
call c1([ character(1):: [character(k3)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],4,3,8)
call c1([ character(1):: [character(k3)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],5,3,8)
k1=1
call c1([ character(1):: [character(k1+1)::(x1,x2,x3,x4,kk=n1,n2)] ],1,2,8)
call c1([ character(1):: [character(k1+1)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],2,2,8)
call c1([ character(1):: [character(k1+1)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],2,2,8)
call c1([ character(1):: [character(k2+1)::(x1,x2,x3,x4,kk=n1,n2)] ],3,3,8)
call c1([ character(1):: [character(k2+1)::(x1//x1,x2//x2,x3//x3,x1//x4,kk=n1,n2)] ],4,3,8)
call c1([ character(1):: [character(k2+1)::(x1//x1//x4,x2//x2//x4,x3//x3//x4,x1//x4//x4,kk=n1,n2)] ],5,3,8)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (1)
if (len(z)/=1)print *,101
if (any(shape(z)/=(/n*2/)))print *,102
if (z(1)/='1 '(1:1))print *,1031
if (z(2)/='1 '(1:1))print *,1032
if (z(3)/='12'(1:1))print *,1041
if (z(4)/='12'(1:1))print *,1042
if (z(5)/='12'(1:1))print *,1051
if (z(6)/='12'(1:1))print *,1052
if (z(7)/='12'(1:1))print *,1053
if (z(8)/='12'(1:1))print *,1054
if (z(8+1)/='1 '(1:1))print *,1031
if (z(8+2)/='1 '(1:1))print *,1032
if (z(8+3)/='12'(1:1))print *,1041
if (z(8+4)/='12'(1:1))print *,1042
if (z(8+5)/='12'(1:1))print *,1051
if (z(8+6)/='12'(1:1))print *,1052
if (z(8+7)/='12'(1:1))print *,1053
if (z(8+8)/='12'(1:1))print *,1054
case (2)
if (len(z)/=1)print *,2101
if (any(shape(z)/=(/n*2/)))print *,2102
if (z(1)/='11'(1:1))print *,2031
if (z(2)/='11'(1:1))print *,2032
if (z(3)/='12'(1:1))print *,2041
if (z(4)/='12'(1:1))print *,2042
if (z(5)/='12'(1:1))print *,2051
if (z(6)/='12'(1:1))print *,1052
if (z(7)/='11'(1:1))print *,1053
if (z(8)/='11'(1:1))print *,1054
if (z(8+1)/='11'(1:1))print *,2031
if (z(8+2)/='11'(1:1))print *,2032
if (z(8+3)/='12'(1:1))print *,2041
if (z(8+4)/='12'(1:1))print *,2042
if (z(8+5)/='12'(1:1))print *,2051
if (z(8+6)/='12'(1:1))print *,1052
if (z(8+7)/='11'(1:1))print *,1053
if (z(8+8)/='11'(1:1))print *,1054
case (3)
if (len(z)/=1)print *,3101
if (any(shape(z)/=(/n*2/)))print *,3102
if (z(1)/='1  '(1:1))print *,31031,'#'//z(1)//'#'
if (z(2)/='1  '(1:1))print *,31032
if (z(3)/='12 '(1:1))print *,31041
if (z(4)/='12 '(1:1))print *,31042
if (z(5)/='123'(1:1))print *,31051
if (z(6)/='123'(1:1))print *,31052
if (z(7)/='123'(1:1))print *,31053
if (z(8)/='123'(1:1))print *,31054
if (z(8+1)/='1  '(1:1))print *,31031,'#'//z(1)//'#'
if (z(8+2)/='1  '(1:1))print *,31032
if (z(8+3)/='12 '(1:1))print *,31041
if (z(8+4)/='12 '(1:1))print *,31042
if (z(8+5)/='123'(1:1))print *,31051
if (z(8+6)/='123'(1:1))print *,31052
if (z(8+7)/='123'(1:1))print *,31053
if (z(8+8)/='123'(1:1))print *,31054
case (4)
if (len(z)/=1)print *,42101
if (any(shape(z)/=(/n*2/)))print *,42102
if (z(1)/='11 '(1:1))print *,42031
if (z(2)/='11 '(1:1))print *,42032
if (z(3)/='121'(1:1))print *,42041
if (z(4)/='121'(1:1))print *,42042
if (z(5)/='123'(1:1))print *,42051
if (z(6)/='123'(1:1))print *,41052
if (z(7)/='112'(1:1))print *,41053
if (z(8)/='112'(1:1))print *,41054
if (z(8+1)/='11 '(1:1))print *,41031
if (z(8+2)/='11 '(1:1))print *,41032
if (z(8+3)/='121'(1:1))print *,41041
if (z(8+4)/='121'(1:1))print *,41042
if (z(8+5)/='123'(1:1))print *,41051
if (z(8+6)/='123'(1:1))print *,41052
if (z(8+7)/='112'(1:1))print *,41053
if (z(8+8)/='112'(1:1))print *,41054
case (5)
if (len(z)/=1)print *,52101
if (any(shape(z)/=(/n*2/)))print *,52102
if (z(1)/='111'(1:1))print *,52031
if (z(2)/='111'(1:1))print *,52032
if (z(3)/='121'(1:1))print *,52041
if (z(4)/='121'(1:1))print *,52042
if (z(5)/='123'(1:1))print *,52051
if (z(6)/='123'(1:1))print *,51052
if (z(7)/='112'(1:1))print *,51053
if (z(8)/='112'(1:1))print *,51054
if (z(8+1)/='111'(1:1))print *,51031
if (z(8+2)/='111'(1:1))print *,51032
if (z(8+3)/='121'(1:1))print *,51041
if (z(8+4)/='121'(1:1))print *,51042
if (z(8+5)/='123'(1:1))print *,51051
if (z(8+6)/='123'(1:1))print *,51052
if (z(8+7)/='112'(1:1))print *,51053
if (z(8+8)/='112'(1:1))print *,51054
end select
end subroutine
end
character,dimension(2):: x1*1,x2*2,x3*3,x4*10000
x1='123'
x2='123'
x3='123'
x4='123'
call s1(x1,x2,x3,x4)
print *,'pass'
end
