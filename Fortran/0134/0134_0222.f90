subroutine s1(d)
real(16),parameter::a03=-0.0_16,y03=1.0_16
real(16)::a,d
if (sign(y03,a03)/=-y03)print '(i4,z32.32)',003,a03
a=-d
if (sign(y03,a)/=-y03)print '(i4,z32.32)',004,a
end
call s1(0.0_16)
print *,'pass'
end
