module m1
contains
function f1(i,c1,c2,c3,c4,c5,c6,c7,k3,k4,k5)   result(r)
character(len=i) :: r
character(len=*) :: c1
character(len=2),value :: c2
character(len=*),optional :: c3
character(len=4),value,optional :: c4
character(len=*),optional :: c5
character(len=6),value :: c6
character(len=*) :: c7
if (len(r)/=8)write(6,*) "NG"
if (len(c6)/=6)write(6,*) "NG"
if (len(c7)/=7)write(6,*) "NG"
if (len(c1)/=1)write(6,*) "NG"
if (c1/='abcdefgh'(01:01))write(6,*) "NG"
if (len(c2)/=2)write(6,*) "NG"
if (c2/='abcdefgh'(01:02))write(6,*) "NG"
if (k3==1) then
if (len(c3)/=3)write(6,*) "NG"
if (c3/='abcdefgh'(01:03))write(6,*) "NG"
if (.not.present(c3))write(6,*) "NG"
c3='123456789'
else 
if (present(c3))write(6,*) "NG"
endif
if (k4==1) then
if (len(c4)/=4)write(6,*) "NG"
if (c4/='abcdefgh'(01:04))write(6,*) "NG"
if (.not.present(c4))write(6,*) "NG"
c4='123456789'
else 
if (present(c4))write(6,*) "NG"
endif
if (k5==1) then
if (len(c5)/=5)write(6,*) "NG"
if (c5/='abcdefgh'(01:05))write(6,*) "NG"
if (.not.present(c5))write(6,*) "NG"
c5='123456789'
else 
if (present(c5))write(6,*) "NG"
endif
if (c6/='abcdefgh'(01:06))write(6,*) "NG"
if (c7/='abcdefgh'(01:07))write(6,*) "NG"
r='123456789'
c1='123456789'
c2='123456789'
c6='123456789'
c7='123456789'
end function
end
use m1
character(len=1) :: c1
character(len=2) :: c2
character(len=3) :: c3
character(len=4) :: c4
character(len=5):: c5
character(len=6):: c6
character(len=7) :: c7
c1='abcdefghi'
c2='abcdefghi'
c3='abcdefghi'
c4='abcdefghi'
c5='abcdefghi'
c6='abcdefghi'
c7='abcdefghi'
if (f1(8,c1,c2,c3,c4,c5,c6,c7,1,1,1)/='12345678')write(6,*) "NG"
if (c1/='12345678'(01:01))write(6,*) "NG"
if (c2/='abcdefgh'(01:02))write(6,*) "NG"
if (c3/='12345678'(01:03))write(6,*) "NG"
if (c4/='abcdefgh'(01:04))write(6,*) "NG"
if (c5/='12345678'(01:05))write(6,*) "NG"
if (c6/='abcdefgh'(01:06))write(6,*) "NG"
if (c7/='12345678'(01:07))write(6,*) "NG"

c1='abcdefghi'
c2='abcdefghi'
c3='abcdefghi'
c4='abcdefghi'
c5='abcdefghi'
c6='abcdefghi'
c7='abcdefghi'
if (f1(8,c1=c1,c2=c2,      c4=c4,c5=c5,c6=c6,c7=c7,k3=0,k4=1,k5=1)/='12345678')write(6,*) "NG"
if (c1/='12345678'(01:01))write(6,*) "NG"
if (c2/='abcdefgh'(01:02))write(6,*) "NG"
if (c3/='abcdefgh'(01:03))write(6,*) "NG"
if (c4/='abcdefgh'(01:04))write(6,*) "NG"
if (c5/='12345678'(01:05))write(6,*) "NG"
if (c6/='abcdefgh'(01:06))write(6,*) "NG"
if (c7/='12345678'(01:07))write(6,*) "NG"

c1='abcdefghi'
c2='abcdefghi'
c3='abcdefghi'
c4='abcdefghi'
c5='abcdefghi'
c6='abcdefghi'
c7='abcdefghi'
if (f1(8,c1=c1,c2=c2,      c4=c4,      c6=c6,c7=c7,k3=0,k4=1,k5=0)/='12345678')write(6,*) "NG"
if (c1/='12345678'(01:01))write(6,*) "NG"
if (c2/='abcdefgh'(01:02))write(6,*) "NG"
if (c3/='abcdefgh'(01:03))write(6,*) "NG"
if (c4/='abcdefgh'(01:04))write(6,*) "NG"
if (c5/='abcdefgh'(01:05))write(6,*) "NG"
if (c6/='abcdefgh'(01:06))write(6,*) "NG"
if (c7/='12345678'(01:07))write(6,*) "NG"

c1='abcdefghi'
c2='abcdefghi'
c3='abcdefghi'
c4='abcdefghi'
c5='abcdefghi'
c6='abcdefghi'
c7='abcdefghi'
if (f1(8,c1=c1,c2=c2,c3=c3,      c5=c5,c6=c6,c7=c7,k3=1,k4=0,k5=1)/='12345678')write(6,*) "NG"
if (c1/='12345678'(01:01))write(6,*) "NG"
if (c2/='abcdefgh'(01:02))write(6,*) "NG"
if (c3/='12345678'(01:03))write(6,*) "NG"
if (c4/='abcdefgh'(01:04))write(6,*) "NG"
if (c5/='12345678'(01:05))write(6,*) "NG"
if (c6/='abcdefgh'(01:06))write(6,*) "NG"
if (c7/='12345678'(01:07))write(6,*) "NG"
print *,'pass'
end
