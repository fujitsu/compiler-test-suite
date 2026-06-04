module m1
contains
function f1(x1,p2,p1,c1,c3,c5,d1,d3,d5,d2,d4,c2,c4,p3,x2)
character(*),pointer:: p1
character(*),optional,pointer:: p2
character(*),optional,pointer:: p3
character(2)::f1,f2
character(*):: c1
character(2),value:: c2
character(*):: c3
character(4),value:: c4
character(*):: c5
character(*),optional:: d1
character(2),optional,value:: d2
character(*),optional:: d3
character(4),optional,value:: d4
character(*),optional:: d5
complex(16),value::x1,x2
entry    f2(x1,p2,p1,c1,c3,c5,d1,d3,d5,d2,d4,c2,c4,p3,x2)
if (abs(x1-(1,2))>0.001)print *,"fail"
if (abs(x2-(3,4))>0.001)print *,"fail"
x1=0
x2=0

if (len(p1)/=1)print *,"fail"
if (len(c1)/=1)print *,"fail"
if (len(c2)/=2)print *,"fail"
if (len(c3)/=3)print *,"fail"
if (len(c4)/=4)print *,"fail"
if (len(c5)/=5)print *,"fail"
if (p1/='a')print *,"fail"
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
if (present(p2))print *,"fail"
if (present(p3))print *,"fail"
if (present(d1))print *,"fail"
if (present(d2))print *,"fail"
if (present(d3))print *,"fail"
if (present(d4))print *,"fail"
if (present(d5))then
   print *,"fail"
else
   return 
endif
if (len(d1)/=1)print *,"fail"
if (len(d2)/=2)print *,"fail"
if (len(d3)/=3)print *,"fail"
if (len(d4)/=4)print *,"fail"
if (len(d5)/=5)print *,"fail"
if (d1/='a')print *,"fail"
if (d2/='b')print *,"fail"
if (d3/='c')print *,"fail"
if (d4/='d')print *,"fail"
if (d5/='e')print *,"fail"
d1='x'
d2='x'
d3='x'
d4='x'
d5='x'
end function
end
use m1
character(1):: c1,d1
character(2):: c2,d2
character(3):: c3,d3
character(4):: c4,d4
character(5):: c5,d5
character(1),pointer:: p1
character(2),pointer:: p2
character(3),pointer:: p3
complex(16)::x1,x2
x1=(1,2)
x2=(3,4)

allocate(p1,p2,p3)
p1='a'
p2='b'
p3='c'
c1='a'
c2='b'
c3='c'
c4='d'
c5='e'
d1='a'
d2='b'
d3='c'
d4='d'
d5='e'
if (f1(x1=x1,x2=x2,p1=p1,c1=c1,c3=c3,c5=c5,c2=c2,c4=c4)/='12')print *,"fail"
if (abs(x1-(1,2))>0.001)print *,"fail"
if (abs(x2-(3,4))>0.001)print *,"fail"
if (c1/='x')print *,"fail"
if (c2/='b')print *,"fail"
if (c3/='x')print *,"fail"
if (c4/='d')print *,"fail"
if (c5/='x')print *,"fail"
c1='a'
c2='b'
c3='c'
c4='d'
c5='e'
d1='a'
d2='b'
d3='c'
d4='d'
d5='e'
if (f2(x1=x1,x2=x2,p1=p1,c1=c1,c3=c3,c5=c5,c2=c2,c4=c4)/='12')print *,"fail"
if (abs(x1-(1,2))>0.001)print *,"fail"
if (abs(x2-(3,4))>0.001)print *,"fail"
if (c1/='x')print *,"fail"
if (c2/='b')print *,"fail"
if (c3/='x')print *,"fail"
if (c4/='d')print *,"fail"
if (c5/='x')print *,"fail"
print *,'pass'
end
