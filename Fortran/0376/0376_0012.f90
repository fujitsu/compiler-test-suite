subroutine s0
common /z/r41,r42,r43,r44
r41=1.
r42=2.
r43=3.
r44=4.
end
subroutine s1
common /z/r41,r42,r43,r44
if (abs(r41-1)>0.001)print *,'error-1'
if (abs(r42-2)>0.001)print *,'error-2'
if (abs(r43-3)>0.001)print *,'error-3'
if (abs(r44-4)>0.001)print *,'error-4'
end
subroutine s2
real(8)::d4
common /z/r41,d4,r44
if (abs(r41-1)>0.001)print *,'error-11'
end
subroutine s3
common /z/r41(1),r42(1),r43(1),r44(1)
if (abs(r41(1)-1)>0.001)print *,'error-21'
if (abs(r42(1)-2)>0.001)print *,'error-22'
if (abs(r43(1)-3)>0.001)print *,'error-23'
if (abs(r44(1)-4)>0.001)print *,'error-24'
end
subroutine s4
real(8)::d4
common /z/r41(1),d4(1),r44(1)
d4(1)=1
if (abs(r41(1)-1)>0.001)print *,'error-31'
end
call s0
call s1
call s2
call s3
call s4
print *,'pass'
end
