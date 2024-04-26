subroutine s1
real(4),parameter::a01=-0.0,x01=0.0,e01=-x01,y01=1.0
real(8),parameter::a02=-0.0_8,x02=0.0_8,e02=-x02,y02=1.0_8
real(16),parameter::a03=-0.0_16,x03=0.0_16,e03=-x03,y03=1.0_16
complex(4),parameter::b01=(-0.0_4,-0.0_4),c01=(-0.0_4,0.0_4),d01=(0.0_4,-0.0_4),f01=(e01,e01)
complex(8),parameter::b02=(-0.0_8,-0.0_8),c02=(-0.0_8,0.0_8),d02=(0.0_8,-0.0_8),f02=(e02,e02)
complex(16),parameter::b03=(-0.0_16,-0.0_16),c03=(-0.0_16,0.0_16),d03=(0.0_16,-0.0_16),f03=(e03,e03)

if (sign(y01,a01)/=-y01)print '(i4,z8.8)',001,a01
if (sign(y02,a02)/=-y02)print '(i4,z16.16)',002,a02
if (sign(y03,a03)/=-y03)print '(i4,z32.32)',003,a03
if (sign(y01,e01)/=-y01)print '(i4,z8.8)',004,e01
if (sign(y02,e02)/=-y02)print '(i4,z16.16)',005,e02
if (sign(y03,e03)/=-y03)print '(i4,z32.32)',006,e03

if (sign(y01,real(b01))/=-y01)print '(i4,z8.8,1x,z8.8,1x,z8.8)',011,real(b01),b01
if (sign(y02,real(b02))/=-y02)print '(i4,z16.16)',012,real(b02)
if (sign(y03,real(b03))/=-y03)print '(i4,z32.32)',013,real(b03)
if (sign(y01,real(c01))/=-y01)print '(i4,z8.8)',014,real(c01)
if (sign(y02,real(c02))/=-y02)print '(i4,z16.16)',015,real(c02)
if (sign(y03,real(c03))/=-y03)print '(i4,z32.32)',016,real(c03)
if (sign(y01,real(d01))/= y01)print '(i4,z8.8)',017,real(d01)
if (sign(y02,real(d02))/= y02)print '(i4,z16.16)',018,real(d02)
if (sign(y03,real(d03))/= y03)print '(i4,z32.32)',019,real(d03)
if (sign(y01,real(f01))/=-y01)print '(i4,z8.8)',014,real(f01)
if (sign(y02,real(f02))/=-y02)print '(i4,z16.16)',015,real(f02)
if (sign(y03,real(f03))/=-y03)print '(i4,z32.32)',016,real(f03)

end
call s1
print *,'pass'
end
