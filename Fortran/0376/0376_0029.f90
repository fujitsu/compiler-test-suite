type point
   real ::x,y
end type
type,extends(point) :: color_point
  integer :: color
end type color_point
type (point) :: pv=point(1.0,2.0)
type (color_point) :: pc

if (abs(pv%x-1)>0.0001)print *,'error-11',pv%x
if (abs(pv%y-2)>0.0001)print *,'error-12',pv%y

i1=11;i2=12;i3=13
pc=color_point( point= point(i1,i2) ,color=i3)
if (abs(pc%x-11)>0.0001)print *,'error-21'
if (abs(pc%y-12)>0.0001)print *,'error-22'
if (abs(pc%color-13)>0.0001)print *,'error-23'

if (abs(pv%x-1)>0.0001)print *,'error-41',pv%x
if (abs(pv%y-2)>0.0001)print *,'error-42',pv%y

pc=color_point( point= pv ,color=3)
if (abs(pc%x-1)>0.0001)print *,'error-31',pc%x
if (abs(pc%y-2)>0.0001)print *,'error-32',pc%y
if (abs(pc%color-3)>0.0001)print *,'error-33'
print *,'pass'
end
