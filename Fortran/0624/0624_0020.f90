subroutine s3
real(8),parameter::xx1=3.0,yy1=-0.0
real(8),parameter::zz1=dsign(xx1,yy1)
real(8)::x1,y1,z1
x1=3.0
y1=-0.0
z1=dsign(x1,y1)
if (abs(z1-zz1)>0.0000001_8)print *,101,z1-zz1,z1,zz1
if (z1>0.0_8)print *,102,z1
end

call s3
print *,'pass'
end
