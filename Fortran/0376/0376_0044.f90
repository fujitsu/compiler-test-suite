module m1
type a1
  integer::v0=1
  integer::v1=2
  integer::v2=3
  integer::v3=4
  integer::v4=5
  integer::v5=6
end type
type,extends(a1)::a2
  integer::v6=7
  integer::v7=8
  integer::v8=9
  integer::v9=10
end type
end
use m1
type (a2)::v
v=a2()
if (v%v0/=1)print *,'error-11'
if (v%v1/=2)print *,'error-12'
if (v%v2/=3)print *,'error-13'
if (v%v3/=4)print *,'error-14'
if (v%v4/=5)print *,'error-15'
if (v%v5/=6)print *,'error-16'
if (v%v6/=7)print *,'error-17'
if (v%v7/=8)print *,'error-18'
if (v%v8/=9)print *,'error-19'
if (v%v9/=10)print *,'error-20'
v=a2(v9=110,v8=109,v1=102,v3=104,v2=103,v5=106)
if (v%v0/=1)print *,'error-01'
if (v%v1/=102)print *,'error-02'
if (v%v2/=103)print *,'error-03'
if (v%v3/=104)print *,'error-04'
if (v%v4/=5)print *,'error-05'
if (v%v5/=106)print *,'error-06'
if (v%v6/=7)print *,'error-07'
if (v%v7/=8)print *,'error-08'
if (v%v8/=109)print *,'error-09'
if (v%v9/=110)print *,'error-10'
v=a2(-1,-2,-3,-4,-5,-6,-7,v7=-8,v8=-9)
if (v%v0/=-1)print *,'error-21'
if (v%v1/=-2)print *,'error-22'
if (v%v2/=-3)print *,'error-23'
if (v%v3/=-4)print *,'error-24'
if (v%v4/=-5)print *,'error-25'
if (v%v5/=-6)print *,'error-26'
if (v%v6/=-7)print *,'error-27'
if (v%v7/=-8)print *,'error-28'
if (v%v8/=-9)print *,'error-29'
if (v%v9/=10)print *,'error-30'
print *,'pass'
end
