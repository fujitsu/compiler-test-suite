subroutine ss
integer :: a1(1),a2(1),a3(1)
integer :: b1(1),b2(1),b3(1)
data (a1(k1),k1=1,1)/1/
data (a2(k2),k2=1,1)/1/
data (a3(k3),k3=1,1)/1/
data (b1(m1),m1=1,1)/1/
data (b2(m2),m2=1,1)/1/
data (b3(m3),m3=1,1)/1/
target  k1
if (a1(1)/=1) print *,101
if (a2(1)/=1) print *,101
if (a3(1)/=1) print *,101
if (b1(1)/=1) print *,101
if (b2(1)/=1) print *,101
if (b3(1)/=1) print *,101
do n=1,2
block 
  integer::m1,m2,m3
  k1=1
  k2=1
  k3=1
  m1=1
  m2=1
  m3=1
end block
  k1=2
  k2=2
  k3=2
  m1=2
  m2=2
  m3=2
end do
end subroutine
call ss
print *,'pass'
end
