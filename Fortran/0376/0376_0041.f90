module m1
type a1
  integer::v0=1
  integer::v1=2
  integer::v2  
  integer::v3  
  integer::v4=5
  integer::v5
end type
type,extends(a1)::a2
  integer::v6=7
  integer::v7=8
  integer::v8  
  integer::v9  
end type
end
use m1
type (a2)::v
v=a2(v9=10,v8=9,v1=2,v3=4,v2=3,v5=6)
if (v%v0/=1)print *,'error-01'
if (v%v1/=2)print *,'error-02'
if (v%v2/=3)print *,'error-03'
if (v%v3/=4)print *,'error-04'
if (v%v4/=5)print *,'error-05'
if (v%v5/=6)print *,'error-06'
if (v%v6/=7)print *,'error-07'
if (v%v7/=8)print *,'error-08'
if (v%v8/=9)print *,'error-09'
if (v%v9/=10)print *,'error-10'
print *,'pass'
end
