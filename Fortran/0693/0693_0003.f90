module m1
contains
function f1(x1,c1,c3,c5,c2,c4,x2)
complex(16),value::x1,x2
character(2)::f1
character(*):: c1
character(2),value:: c2
character(*):: c3
character(4),value:: c4
character(*):: c5
if (abs(x1-(1,2))>0.001)print *,"fail"
if (abs(x2-(3,4))>0.001)print *,"fail"
x1=0
x2=0
if (len(c1)/=1)print *,"fail"
if (len(c2)/=2)print *,"fail"
if (len(c3)/=3)print *,"fail"
if (len(c4)/=4)print *,"fail"
if (len(c5)/=5)print *,"fail"
if (c1/='a')print *,"fail"
if (c2/='b')print *,"fail"
if (c3/='c')print *,"fail"
if (c4/='d')print *,"fail"
if (c5/='e')print *,"fail"
c1='x'
c2='x'
c3='x'
c4='x'
c5='x'
f1='12'
end function
end
use m1
character(1):: c1
character(2):: c2
character(3):: c3
character(4):: c4
character(5):: c5
complex(16)::x1,x2
x1=(1,2)
x2=(3,4)
c1='a'
c2='b'
c3='c'
c4='d'
c5='e'
if (f1(x1,c1,c3,c5,c2,c4,x2)/='12')print *,"fail"
if (abs(x1-(1,2))>0.001)print *,"fail"
if (abs(x2-(3,4))>0.001)print *,"fail"
if (c1/='x')print *,"fail"
if (c2/='b')print *,"fail"
if (c3/='x')print *,"fail"
if (c4/='d')print *,"fail"
if (c5/='x')print *,"fail"
print *,'pass'
end
