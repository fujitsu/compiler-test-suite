MODULE mod1

integer::cc=0
interface operator(.abc.)
function sub (px,ax) result (c)
  integer, INTENT(in) :: px(..)
  integer, INTENT(in) :: ax(..)
  integer::c
  END function sub
end interface
END MODULE mod1

program main
use mod1
integer ::a1(1),b1(1)
integer ::a2(2),b2(2)
integer ::a3(5),b3(7)
integer ::a4(2,2),b4(2,2)
integer ::a(2,2,2),b(2,2,2),c
a1=1 
b1=1
a2=2
b2=2
a3=3
b3=3
a4=4
b4=4
a=5
b=5
c=0

c=a.abc.b
c=a1.abc.b1
c=a2.abc.b2
c=a3.abc.b3
c=a4.abc.b4

if(c /=100)print*,111
if(cc /=5)print*,110
print*,"PASS"
end
  
function sub (px,ax) result (c)
  use mod1
  integer, INTENT(in) :: px(..)
  integer, INTENT(in) :: ax(..)
  integer::c
  c=100
  cc=cc+1
  if(kind(px)/=4)print*,203
  if(kind(ax)/=4)print*,204
END function sub

