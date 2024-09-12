implicit none
integer,parameter :: n1(6,6)=2
real,parameter :: arr(5)=[5.0,5.0,1.0,2.0,5.0]
Intrinsic :: RANK
integer::x= RANK(n1(1:6:2,1:6:2))
integer::y= RANK(arr(1:5:2))
if( x.ne.2)  print *,101
if( y.ne.1)  print *,102
print*,"pass"
end
