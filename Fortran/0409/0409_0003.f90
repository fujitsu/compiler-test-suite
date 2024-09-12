module m
private
!$omp threadprivate(k1,k2,k3)
type,private:: t1(k1,k2,k3)
integer(1),kind:: k1=128
integer(kind=1),kind::k2=-127
integer*1,kind::k3=huge(1_8)
end type 
type,private,abstract:: t2(k1,k2,k3)
integer(2),kind::k1=1
integer(kind=2),kind::k2=32678
integer*2,kind::k3=1
end type 
type,private:: t3(k1,k2,k3)
integer(8**1),kind::k1=1
integer(kind=8),kind::k2=326788
integer*8,kind::k3=1
end type 
end
use m
print *,'pass'
end
