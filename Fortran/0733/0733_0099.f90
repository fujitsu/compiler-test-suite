module m1
type aam
  integer i
end type
type(aam),parameter::y1(2)=(/aam(100),aam(200)/)
end
use m1
type aa
  integer i
end type
type(aa),parameter::x1(2)=(/aa(10),aa(20)/)
j=2
k=x1(j)%i
if (k/=20)print *,'error-1'
k=y1(j)%i
if (k/=200)print *,'error-2'
print *,'pass'
end
